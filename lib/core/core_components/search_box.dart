import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';

import '../../../../../core/consts/app_colors.dart';

class SearchBoxDelegate extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    var o = 1 - shrinkOffset/maxExtent;
    if(maxExtent - shrinkOffset < 19.w) o = 0;
    return Opacity(
        opacity: o,
        child: GestureDetector(
          onTap: (){},//()=> Get.toNamed(SearchFilterScreen.name),
          child: Container(
            height: maxExtent - shrinkOffset,
            alignment: Alignment.center,
            padding: EdgeInsets.all(2.5.w),
            child: Container(
              height: 15.w,
              decoration: BoxDecoration(
                color: AppColors.fontOnLight.withOpacity(0.2),
                borderRadius: BorderRadius.circular(2.5.w),
              ),
              child: ListTile(
                leading: Icon(CupertinoIcons.search),
                title: Text('Search'.tr),
              ),
            ),
          ),
        ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 25.w;

  @override
  // TODO: implement minExtent
  double get minExtent => 25.w;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}
