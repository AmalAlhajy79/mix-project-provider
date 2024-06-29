import 'package:flutter/material.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';

import '../consts/app_colors.dart';
class DeleteButton extends StatelessWidget {
  //const DeleteButton({Key? key}) : super(key: key);
  final String title;
  final IconData ?icon;
  final double? heightContainer;
  final double? weightContainer;
  final double? sizeIcon;
  final Color? colorContainer;
  final Color? colorIcon;
  final FontWeight? fontWeightText;
  final double? fontSizeText;
  final Color? colorTextStyle;
  final BorderRadiusGeometry? borderRadius;
  Function()? onTap;

  DeleteButton({
      required this.title,
      this.icon,
      this.heightContainer,
      this.weightContainer,
      this.sizeIcon,
      this.colorContainer,
      this.colorIcon,
      this.fontWeightText,
      this.fontSizeText,
      this.colorTextStyle,
    this.borderRadius,
       this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
          height:heightContainer!=null ?heightContainer: 10.5.w,
          decoration: BoxDecoration(
              color:colorContainer!=null?colorContainer: AppColors.red.withAlpha(1500),
              borderRadius:borderRadius!=null?borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            icon!= null?  Icon(
              icon,////
                color:colorIcon !=null ?colorIcon : AppColors.white,
                size:sizeIcon != null ? sizeIcon : 20,
              ):Text(""),
              Text(
               title !=null ? title: " Delete My Account",
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
