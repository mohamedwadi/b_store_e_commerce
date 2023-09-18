import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard(
      {super.key,
      required this.title,
      required this.priceAfterDiscount,
      required this.priceBeforeDiscount,
      required this.subTitle,
      required this.image});

  final String title;
  final String subTitle;
  final double priceBeforeDiscount;
  final double priceAfterDiscount;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 140.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    alignment: AlignmentDirectional.center,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 21.w , vertical: 2),
                    height: 140.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                        color: ManagerColors.colorProductImage,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Image.asset(
                      image,
                      height: 136.h,
                      width: 98.w,
                    ),
                  ),
                  PositionedDirectional(
                    end: 8.1.w,
                    start: 116.w,
                    top: 8.1.h,
                    bottom: 116.h,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: ManagerColors.colorAfterDiscount,
                        size: 16.w,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              CustomText(
                text: title,
                size: 14,
                weight: FontWeight.bold,
                color: ManagerColors.textColor,
              ),
              SizedBox(
                height: 3.h,
              ),
              CustomText(
                text: subTitle,
                size: 14,
                weight: FontWeight.w600,
                color: ManagerColors.textInputColor,
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'USD$priceAfterDiscount',
                    size: 14,
                    weight: FontWeight.bold,
                    color: ManagerColors.colorAfterDiscount,
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  CustomText(
                    text: 'USD$priceBeforeDiscount',
                    size: 14,
                    weight: FontWeight.bold,
                    color: ManagerColors.colorBeforeDiscount,
                    textDecoration: TextDecoration.lineThrough,
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.w,
        )
      ],
    );
  }
}
