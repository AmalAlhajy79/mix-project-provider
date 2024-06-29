import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../modules/provider/services/data/models/category_model.dart';
import '../../modules/provider/services/data/models/my_services_model.dart';



class CustomCard extends StatelessWidget {

  const CustomCard._({Key? key, required this.category, required this.image, this.onTap}) : super(key: key);
  final String category;
   final String image;
  final VoidCallback? onTap;

  factory CustomCard.category(List<DataCategory> category) =>
      CustomCard._(
        category: category[0].name,//.title,
        image:'https://th.bing.com/th/id/R.4a4c4b08afbd35cfb25b80022f0552f1?rik=U7fEYx1UqMQbwg&riu=http%3a%2f%2fstatic1.squarespace.com%2fstatic%2f591e0a68414fb5f9f524b604%2f592f082617bffc1a635596ec%2f594d5a851b10e31b57c737aa%2f1542741752981%2fService%2bis%2bService%2bis%2bService%2bpic.jpg%3fformat%3d1500w&ehk=YyuzppgCpkASrI1Cq3Y345luuwkDGiDBfXvzwhvWzW0%3d&risl=&pid=ImgRaw&r=0',

        //image: category.coverImage,
        // todo : onTap: ()=> Get.toNamed(),
      );

  factory CustomCard.MyService(Data service) =>
      CustomCard._(
        category: service.name,//title
        image:'https://th.bing.com/th/id/R.4a4c4b08afbd35cfb25b80022f0552f1?rik=U7fEYx1UqMQbwg&riu=http%3a%2f%2fstatic1.squarespace.com%2fstatic%2f591e0a68414fb5f9f524b604%2f592f082617bffc1a635596ec%2f594d5a851b10e31b57c737aa%2f1542741752981%2fService%2bis%2bService%2bis%2bService%2bpic.jpg%3fformat%3d1500w&ehk=YyuzppgCpkASrI1Cq3Y345luuwkDGiDBfXvzwhvWzW0%3d&risl=&pid=ImgRaw&r=0',
//service.coverImage,
      );

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(right: 15,left: 15),
        child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,//AppColors.brown.withAlpha(600),
          //Color(0xD1F8B0EE).withAlpha(600),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 1, left: 0.1, right: 0.1),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(
              //   height: 25.w,
              //   width: 100.w,
              Expanded(
                child:
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white70,
                  ),
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child:
                    Image.network(
                      'https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain',
                      width: 100.w,
                      fit: BoxFit.cover,
                      //  height: 150,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(9),bottomRight: Radius.circular(9) ),
                    color: Colors.red.shade50,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 3.w,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(category,//"Service Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 11)),
                        ],
                      ),


                    ],
                  ),
                  // ListTile(
                  // title: Text('Service Name',style: TextStyle(fontWeight: FontWeight.bold),),
                  // subtitle: Text('sdsgffffffffffff'),
                  //       ),
                ),
              )
            ],
          ),
        ),
        // Stack(
        // //  alignment: Alignment.topCenter,
        //   children: [
        //    Expanded(
        //        child: Image.network(
        //            "https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain",
        //          fit: BoxFit.cover,
        //        ))
        //         //Image.asset("${AppSVGs.logo}")
        //   ,
        //   //  SizedBox(height: 1,),
        //     // Container(
        //     //   color: Colors.red,
        //     //   child: Column(
        //     //     children: [
        //     //       Text("Service Name"),
        //     //       SizedBox(height: 1.w,),
        //     //       Text("nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn"),
        //     //     ],
        //     //   ),
        //     // )
        //   ],
        // ),
            ),
      );
  }
}
