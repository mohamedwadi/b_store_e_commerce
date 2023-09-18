import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
     required this.onTap,
      required this.text,
      this.colorText = Colors.white,
      this.size = 16
      ,this.colorButton = Colors.transparent
        ,this.alignment = MainAxisAlignment.center,
          this.icon
        ,this.radious = 0
        ,this.spaceBetweenIcons = 2
        ,this.colorBorder = Colors.transparent
      });

  final void Function() onTap;
  final String text;
  final Color colorText;
  final double size;
  final Color colorButton;
  final MainAxisAlignment alignment;
  final IconData? icon;
  final double radious;
  final  double spaceBetweenIcons;
  final Color colorBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 85.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radious.r),
        color: ManagerColors.appColor,
        border: Border.all(
          color: colorBorder
        )
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  CustomText(
                    text: text,
                    size: size,
                    color: colorText,
                  ),
                  SizedBox(width: spaceBetweenIcons,),
                  Icon(icon, color: Colors.white, size: 16.w,)
                ],
              ),
      ),
      );

    return Align(
      child: Container(
        height: 45,
        child: Row(
          mainAxisAlignment: alignment,
          children: [
            TextButton(
              onPressed: onTap,
              style: TextButton.styleFrom(
                backgroundColor: colorButton,
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 14,
                ),
              ),child: Row(
              children: [
                CustomText(
                  text: text,
                  size: size,
                  color: colorText,
                ),
                SizedBox(width: 2,),
                Icon(Icons.arrow_forward_outlined, color: Colors.white, size: 16,)
              ],
            ),
            ),
          ],
        ),
      ),
    );

  }
  
}
