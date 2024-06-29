import 'package:flutter/material.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';

import '../consts/app_colors.dart';
class ButtonReqServic extends StatelessWidget {
  //const DeleteButton({Key? key}) : super(key: key);
  String title;
 // IconData ?icon;
  double? heightContainer;
  double? weightContainer;
  //double? sizeIcon;
  Color? colorContainer;
  //Color? colorIcon;

  FontWeight? fontWeightText;
  double? fontSizeText;
  Color? colorTextStyle;
  Gradient? gradient;
  BorderRadiusGeometry? borderRadius;
  Function()? onTap;

  ButtonReqServic({
      required this.title,
     // this.icon,
      this.heightContainer,
      this.weightContainer,
     // this.sizeIcon,
      this.colorContainer,
    //  this.colorIcon,
      this.fontWeightText,
      this.fontSizeText,
      this.colorTextStyle,
    this.gradient,
    this.borderRadius,
       this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
          height:heightContainer!=null ?heightContainer: 11.w,
          decoration: BoxDecoration(
              color:colorContainer!=null?colorContainer: AppColors.green.withAlpha(1100),
              borderRadius:borderRadius!=null?borderRadius: BorderRadius.circular(10),
               gradient:gradient ,
              //!=null ? gradient:LinearGradient(
          //     colors: [
          //     //AppColors.white,
          //     AppColors.white.withAlpha(620),
          //     AppColors.white.withAlpha(620)
          //     ],
          //     begin: Alignment.bottomLeft,
          //     end: Alignment.topRight
          // )
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
               title !=null ? title: " ",
                style: TextStyle(
                    color:colorTextStyle != null ? colorTextStyle: AppColors.white,
                    fontSize:fontSizeText !=null ?fontSizeText : 11,
                    fontWeight:fontWeightText !=null?fontWeightText: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
