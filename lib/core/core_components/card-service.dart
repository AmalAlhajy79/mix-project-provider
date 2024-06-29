import 'package:flutter/material.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';


class CardService extends StatelessWidget {

  const CardService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Service Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 11)),
                      ],
                    ),
                    SizedBox(
                      height: 1.w,
                    ),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                          "fffff nnnnn hhh nnnn fffflllll kkkkk hhh oppppp oppp hhhh hhttt ddd aaaaa fffffffff ....",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black87)),
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
    );
  }
}
