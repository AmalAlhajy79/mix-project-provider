import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
import 'package:mix_gradition_progect/modules/provider/services/data/models/category_model.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/app_scaffold.dart';
import '../../../../../../core/core_components/button-Req-Serv.dart';
import '../../../../../core/core_components/custom_card.dart';
import '../../../../../core/core_components/search_box.dart';
import '../../../../../core/core_components/status_component.dart';
import '../controllers/category_controller.dart';

class CategoriseScreen extends StatelessWidget {
   CategoriseScreen({Key? key}) : super(key: key);
   static const name = '/categories';
   static final page = GetPage(name: name, page: () =>  CategoriseScreen());

   CategoryController controller=Get.put(CategoryController());
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
      body: GetBuilder<CategoryController>(
        builder: (_) => StatusComponent(
            status: controller.status,
            onError: (context) => SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(controller.error),
                  ElevatedButton(onPressed: controller.loadData, child: Text("TRY AGAIN"))
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
                            fontWeight: FontWeight.bold),
                      )),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_none))
                  ],
                ),
                //     const SliverAppBar(title: Text('Service')),
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
                          (c, i) => CustomCard.category(controller.data),
                      childCount:controller.data.length,
                  ),
                )
              ],
            )),
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
