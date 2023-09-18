import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,
     required this.onTap,
     this.text = '',
     this.color = Colors.white,
     this.redious = 0,
     this.colorText = Colors.black,
     this.colorBorder = Colors.transparent,
     this.paddingBottom = 0,
     this.paddingTop = 0,
     this.paddingEnd = 0,
     this.paddingStart = 0,
     this.textSize = 14,
     this.fontWeight = FontWeight.bold
  });
  VoidCallback onTap;
  String text;
  Color color;
  double redious ;
  Color colorText;
  Color colorBorder;
   final double paddingStart;
   final double paddingEnd;
   final double paddingTop;
   final double paddingBottom;
   final double textSize;
   final FontWeight fontWeight;


   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsetsDirectional.only(start: paddingStart.w  , end: paddingEnd.w
          ,top: paddingTop.h , bottom: paddingBottom.h),
        height: 50.h,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(redious.r),
          border: Border.all(
              color: colorBorder
          )
        ),
        child: CustomText(text: text, size: textSize, color: colorText, weight: fontWeight,),
      ),
    );
  }
}
