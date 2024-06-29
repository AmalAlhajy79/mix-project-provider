
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/core_components/app_scaffold.dart';
import '../../../../../core/core_components/custom_card.dart';
import '../../../../../core/core_components/search_box.dart';
import '../../../../../core/core_components/status_component.dart';
import '../controllers/my_services_controller/my_services_binding.dart';
import '../controllers/my_services_controller/my_services_controller.dart';
import 'add_service_screen.dart';
import 'categorise_screen.dart';

class HomeScreen extends GetView<MyServicesController> {
  HomeScreen({super.key});
  static const name='/home';
  static final page =GetPage(name: name, page: ()=>HomeScreen(),
  binding: MyServicesBinding());
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
    return AppScaffold(
      drawer: Drawer(),
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     "SERVICES",
      //     style: TextStyle(
      //         color: AppColors.green,
      //         fontSize: 15,
      //         fontWeight: FontWeight.bold),
      //   )),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
      //   ],
      // ),
      body://Text(controller.data[0].category),
      GetBuilder<MyServicesController>(
        builder: (_) => StatusComponent(
          status: controller.status,
          onError: (context) => SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.error),
                ElevatedButton(
                  onPressed: controller.loadData,
                  child: Text("TRY AGAIN"),
                ),
              ],
            ),
          ),
          onSuccess: (context) => CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                title: Center(
                  child: Text(
                    "SERVICES",
                    style: TextStyle(
                      color: AppColors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                    color: AppColors.orange,
                    onPressed: () {
                      // Navigate to the new page
               //   Get.toNamed(AddServiceScreen.name);
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SliverPersistentHeader(
                delegate: SearchBoxDelegate(),
                pinned: true,
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 7.w,
                  crossAxisSpacing: 7.w,
                  maxCrossAxisExtent: 100.w / 2,
                ),
                delegate: SliverChildBuilderDelegate(
                      (c, i) =>InkWell(onTap: (){Get.toNamed(CategoriseScreen.name);},child:  CustomCard.MyService(controller.data[i]),),

                  childCount: controller.data.length,
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          //  color: Colors.yellowAccent,//.withAlpha(1500),
          gradient: LinearGradient(
              colors: [
                Colors.cyan.shade900,
                Colors.cyan.shade800,
                Colors.cyan.shade800,
                Colors.cyan.shade600,
                AppColors.cyan.withOpacity(0.8),
                AppColors.cyan.withOpacity(0.3),
                AppColors.white.withAlpha(4)
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight
          ),

        ),
        child: BottomNavigationBar(
          //useLegacyColorScheme: false,
          backgroundColor: AppColors.cyan.withOpacity(0.5),//green,
          //Colors.cyan.shade700 ,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(

              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 26,
              ),
              label: '',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_sharp, color: Colors.white, size: 26),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white, size: 26),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.green,
          // unselectedItemColor:AppColors.white ,
          onTap: (value) => print("AA..........AA"),
        ),
      ),

    );
  }
}
