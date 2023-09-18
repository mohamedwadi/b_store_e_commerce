
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.leadingIcons,
    required this.trailingIcons,
    required this.title,
    this.sizeLeadingIcons,
    this.sizeTrailingIcons,
    required this.onTapLeading,
    required this.onTapTrailing,
    this.colorBackgroundIconTrailing = Colors.transparent,
  this.radiusBoxTrailing = 0
  });

  final IconData leadingIcons;
  final IconData? trailingIcons;
  final String title;
  final double? sizeLeadingIcons;
  final double? sizeTrailingIcons;
  final void Function() onTapLeading;
  final void Function() onTapTrailing;
  final Color colorBackgroundIconTrailing;
  final double radiusBoxTrailing;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(top: 60.h),
      child: Row(
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            margin: EdgeInsetsDirectional.only(start: 30.w),
            height: 24.h,
            width: 24.w,
            child: IconButton(
              iconSize: sizeLeadingIcons,
              onPressed: onTapLeading,
              icon: Icon(leadingIcons ,),
              color: ManagerColors.appColor,
              constraints: BoxConstraints(),
              padding: EdgeInsetsDirectional.zero,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          CustomText(
            text: title,
            color: ManagerColors.appColor,
            weight: FontWeight.bold,
            size: 16.sp,
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radiusBoxTrailing),
              color: colorBackgroundIconTrailing ,

            ),
            child: Container(
              height: 24.h,
              width: 24.w,
              margin: EdgeInsetsDirectional.only(end: 30.w),
              child: IconButton(
                iconSize: sizeTrailingIcons,
                onPressed: onTapTrailing,
                icon: Icon(trailingIcons),
                color: ManagerColors.appColor,
                constraints: BoxConstraints(),
                padding: EdgeInsetsDirectional.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
