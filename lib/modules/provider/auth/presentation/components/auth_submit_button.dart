import 'package:flutter/material.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';

import '../../../../../core/consts/app_colors.dart';


class AuthSubmitButton extends StatelessWidget {
  const AuthSubmitButton({Key? key,this.onTap,this.label = 'Submit'}) : super(key: key);

  final Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70.w,
        height: 12.5.w,
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.circular(7.5.w),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
