import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_product_card.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_click.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomListProduct extends StatelessWidget {
  const CustomListProduct({
    super.key,
    required this.title
    ,required this.onTapText
  });
  final String title;
  final void Function() onTapText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              size: 18,
              color: ManagerColors.textInputColor,
              weight: FontWeight.bold,
            ),
            CustomTextClick(
              text: 'View All',
              onTap: onTapText,
              color: ManagerColors.textColor,
              fontWeight: FontWeight.bold,
              sizeText: 14,
              paddingBottom: 3,
              paddingEnd: 27.85,
            )
          ],
        ),
        SizedBox(
          height: 13.h,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 214.h),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CustomProductCard(
                title: 'title',
                priceAfterDiscount: 50,
                priceBeforeDiscount: 100,
                subTitle: 'sup title',
                image: ImagesPath.defultImage,
              );
            },
          ),
        ),
      ],
    );
  }
}
