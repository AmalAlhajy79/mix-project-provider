import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
import 'package:shimmer/shimmer.dart';

import '../consts/app_colors.dart';

class SelectButton<T> extends StatelessWidget {

  final List<T> options;
  final String title;
  final String Function(T data)? converter;
  final ValueChanged<T>? onSelected;
  const SelectButton({super.key, required this.options,this.converter, this.onSelected, required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(2.5.w),
        color: AppColors.greyFieldLight,
        child: ListTile(
          title: Text(title),
          textColor: context.theme.hintColor,
          onTap: ()=> showModalBottomSheet(
              context: context,
              builder: (_) =>
                  Container(
                    height: 100.w,
                    width: double.infinity,
                    padding: EdgeInsets.all(5.w),
                    child: ListView.builder(
                        itemCount: options.length,
                        itemBuilder: (_,i) =>
                            ListTile(
                              title: Text(converter?.call(options[i]) ?? options[i].toString().tr),
                              onTap: (){
                                onSelected?.call(options[i]);
                                Get.back();
                              },
                            )
                    ),
                  )
          )
        )
    );
  }

  static Widget loading() => Padding(
      padding: EdgeInsets.all(2.5.w),
      child: Shimmer(
        gradient: LinearGradient(
          colors: [
            AppColors.cyan,
            AppColors.cyan.withOpacity(0.2),
          ]
        ),
        child: ListTile(
          title: Text('Loading...'.tr),
          textColor: AppColors.white,
          tileColor:AppColors.greyFieldLight,
        ),
      )
  );
}
