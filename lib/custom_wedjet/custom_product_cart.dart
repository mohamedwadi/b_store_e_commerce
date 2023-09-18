import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCartProduct extends StatelessWidget {
  const CustomCartProduct(
      {super.key,
        required this.title,
        required this.priceAfterDiscount,
        required this.priceBeforeDiscount,
        required this.image});

  final String title;
  final double priceBeforeDiscount;
  final double priceAfterDiscount;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      margin: EdgeInsetsDirectional.only(start: 30.w),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 120.h,
            width: 120.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: title,
                size: 16,
                weight: FontWeight.w600,
                color: ManagerColors.textInputColor,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'USD$priceAfterDiscount',
                    size: 14,
                    weight: FontWeight.bold,
                    color: ManagerColors.colorBeforeDiscount,
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  CustomText(
                    text: 'USD$priceBeforeDiscount',
                    size: 14,
                    weight: FontWeight.bold,
                    color: ManagerColors.colorAfterDiscount,
                    textDecoration: TextDecoration.lineThrough,
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Container(
                height: 30.h,
                width: 70.w,
                padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: ManagerColors.colorBackgroundIcons,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add ,
                        ),
                        iconSize: 18.h,
                        color: ManagerColors.appButtonColor,
                        padding: EdgeInsetsDirectional.zero,
                        constraints: BoxConstraints(),
                      ),
                      height: 18.h,
                      width: 18.w,
                    ),
                    SizedBox(width: 8.w,),
                    CustomText(text: '1',color: ManagerColors.textInputColor,size: 14
                      , weight: FontWeight.w600,),
                    SizedBox(width: 6.w,),
                    Container(
                      height: 18.h,
                      width: 18.w,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove ,
                        ),
                        iconSize: 18.h,
                        color: ManagerColors.appButtonColor,
                        padding: EdgeInsetsDirectional.zero,
                        constraints: BoxConstraints(),
                      ),
                    ),


                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
