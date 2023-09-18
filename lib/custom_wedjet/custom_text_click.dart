import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextClick extends StatelessWidget {
  const CustomTextClick(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.sizeText = 14,
      this.fontWeight = FontWeight.normal,
      required this.onTap,
      this.paddingBottom = 0,
      this.paddingTop = 0,
      this.paddingEnd = 0,
      this.paddingStart = 0});

  final String text;
  final Color color;
  final double sizeText;
  final FontWeight fontWeight;
  final void Function() onTap;
  final double paddingStart;
  final double paddingEnd;
  final double paddingTop;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: paddingStart.w,
            end: paddingEnd.w,
            top: paddingTop.h,
            bottom: paddingBottom.h),
        child: CustomText(
          text: text,
          color: color,
          size: sizeText,
          weight: fontWeight,
        ),
      ),
    );
  }
}
