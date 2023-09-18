import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomCardProfile extends StatelessWidget {
  const CustomCardProfile({
    super.key,
    this.leadingIcons,
    this.trailingIcons,
    this.leadingIconColor,
    this.trailingIconColor,
    this.cardColor,
    required this.title,
    required this.onTap,
    this.divider = true
  });

  final IconData? leadingIcons;
  final IconData? trailingIcons;
  final Color? leadingIconColor;
  final Color? trailingIconColor;
  final Color? cardColor;
  final String title;
  final void Function() onTap;
  final bool divider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
            child:
            Column(
              children: [
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Icon(
                      leadingIcons,
                      color: leadingIconColor,
                      size: 24.h,
                    ),
                    SizedBox(width: 20.w,),
                    CustomText(
                      text: title,
                      weight: FontWeight.w600,
                      size: 16,
                      color: ManagerColors.textInputColor,
                    ),
                    Spacer(),
                    Icon(
                      trailingIcons,
                      size: 20.h,
                      color: trailingIconColor,
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
              ],
            ),

          ),
        ),
        Visibility(
          visible: divider,
          child: Divider(
            height: 0.h,
            thickness: 1,
            indent: 30.w,
            endIndent: 30.w,
            color: Color(0xff000000).withOpacity(0.10),
          ),
        ),
      ],
    );
  }
}
