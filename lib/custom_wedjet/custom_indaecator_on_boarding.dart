import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIndecatorOnBoardin extends StatelessWidget {
  const CustomIndecatorOnBoardin({
    super.key,
    required this.currentpage

  });
  final bool currentpage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width:  currentpage ? 16.w : 8.w,
      margin: EdgeInsetsDirectional.only(end: 4.w),
      decoration: BoxDecoration(
          color: ManagerColors.appColor,
          borderRadius: BorderRadius.circular(16.r)
      ),
    );


  }
}
