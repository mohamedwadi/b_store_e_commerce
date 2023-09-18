import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_app_bar.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 60.h),
            child: Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Container(
                  height: 24.h,
                  width: 24.w,
                  child: IconButton(
                    constraints: BoxConstraints(),
                    padding: EdgeInsetsDirectional.zero,
                    onPressed: () {},
                    iconSize: 24.h,
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                    color: ManagerColors.appColor,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                CustomText(
                  text: 'Back',
                  color: ManagerColors.appColor,
                  weight: FontWeight.bold,
                  size: 16.sp,
                ),
                Spacer(),
                Container(
                  height: 45.h,
                  width: 45.w,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ManagerColors.colorBackgroundIcons,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                    color: ManagerColors.colorAfterDiscount,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  width: 30.w,
                )
              ],
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Container(
            height: 200.h,
            margin: EdgeInsetsDirectional.symmetric(horizontal: 44.w),
            child: Image.asset(ImagesPath.productImageDetails),
          ),
          SizedBox(
            height: 18.h,
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(
              horizontal: 30.w,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 191.w,
                  child: CustomText(
                    size: 18,
                    text: 'Montpellier White Chronograph',
                    color: ManagerColors.textInputColor,
                    weight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CustomText(
                  text: '\$380',
                  color: ManagerColors.textInputColor,
                  weight: FontWeight.bold,
                  size: 18,
                )
              ],
            ),
          ),
          Divider(
            height: 40.h,
            endIndent: 30.w,
            indent: 30.w,
          ),
          Container(
            height: 230.h,
            width: 314.w,
            margin: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
              child: CustomText(
            text: 'Inspired by Scandinavian design and engineering, the ontpellier watch is a quality-built accessory for everyday wear. This handmade timepiece has crystal quartz movement, blue crocodile-embossed leather strap and silver water resistant stainless steel case.  Whether you slip it on solo or with a stack of  Grand Frank bangles, the result is timeless.',
            color: ManagerColors.textInputColor.withOpacity(0.6),
                weight: FontWeight.normal,
          )),
          SizedBox(height: 19.h,),
          Container(
            alignment: AlignmentDirectional.center,
            height: 50.h,
            margin: EdgeInsetsDirectional.symmetric(horizontal: 45.w),
            child: CustomButton(onTap: (){} , text: 'Add to Cart', textSize: 14
              ,fontWeight: FontWeight.w600, color: ManagerColors.appButtonColor,
              colorText: ManagerColors.colorTextButton,
            redious: 10,
            ),
          ),


        ],
      ),
    );
  }
}
