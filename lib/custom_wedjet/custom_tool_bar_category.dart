import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToolBarCategory extends StatelessWidget {
  const CustomToolBarCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'Select from categories',
              weight: FontWeight.bold,
              size: 18,
              color: ManagerColors.textInputColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: ManagerColors.appColor,
                size: 24,
              ),
              // splashColor: Colors.red,
              // highlightColor: Colors.red,
              // splashRadius: 20,
              //   constraints: BoxConstraints(),
               splashColor: Colors.transparent,
               // highlightColor: Colors.transparent,

            ),
          ],
        ),
        SizedBox(height: 13.h,),
        Row(
          children: [
            CustomButton(
              text: 'Watches',
              onTap: () {},
              colorText: ManagerColors.textColor,
              colorBorder: ManagerColors.textColor,
              redious: 10,
              paddingStart: 9.27,
              paddingTop: 14.5,
              paddingEnd: 7.73,
              paddingBottom: 13.5,
              textSize: 12,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(width: 15.5.w,),
            CustomButton(
              textSize: 12,
              text: 'Bracelets',
              onTap: () {},
              colorText: ManagerColors.textColor,
              colorBorder: ManagerColors.textColor,
              redious: 10,
              paddingStart: 9.27,
              paddingTop: 14.5,
              paddingEnd: 7.73,
              paddingBottom: 13.5,

            ),
            SizedBox(width: 15.5.w,),
            CustomButton(
              textSize: 12,
              text: 'Straps',
              onTap: () {},
              colorText: ManagerColors.textColor,
              colorBorder: ManagerColors.textColor,
              redious: 10,
              paddingStart: 9.27,
              paddingTop: 14.5,
              paddingEnd: 7.73,
              paddingBottom: 13.5,

            ),
            SizedBox(width: 15.5.w,),
            CustomButton(
              textSize: 12,
              text: 'Set',
              onTap: () {},
              colorText: ManagerColors.textColor,
              colorBorder: ManagerColors.textColor,
              redious: 10,
              paddingStart: 15.36,
              paddingTop: 15,
              paddingEnd: 13.14,
              paddingBottom: 13.5,
            ),

          ],
        ),
      ],
    );
  }
}
