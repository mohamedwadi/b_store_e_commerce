import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_list_product.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_product_card.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_click.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_tool_bar_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 30.w, top: 60.h),
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsetsDirectional.only(end: 30.w),
            //   child: CustomToolBarCategory(),
            // ),
            // SizedBox(
            //   height: 30.h,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     CustomText(
            //       text: 'Most Selling',
            //       size: 18,
            //       color: ManagerColors.textInputColor,
            //       weight: FontWeight.bold,
            //     ),
            //     CustomTextClick(
            //       text: 'View All',
            //       onTap: () {},
            //       color: ManagerColors.textColor,
            //       fontWeight: FontWeight.bold,
            //       sizeText: 14,
            //       paddingBottom: 3,
            //       paddingEnd: 27.85,
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 13.h,
            // ),

        /**
         *هي هان ا لمشكلة عند ما اكتب 214.h
         ماا بزبط
         */
            Container(
              height: 214,
              child: CustomProductCard(
                title: 'title',
                priceAfterDiscount: 50,
                priceBeforeDiscount: 100,
                subTitle: 'sup title',
                image: ImagesPath.defultImage,
              ),
            )
            // ConstrainedBox(
            //   constraints: BoxConstraints(maxHeight: 214.h),
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 5,
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) {
            //       return CustomProductCard(
            //         title: 'title',
            //         priceAfterDiscount: 50,
            //         priceBeforeDiscount: 100,
            //         subTitle: 'sup title',
            //         image: ImagesPath.defultImage,
            //       );
            //     },
            //   ),
            // ),

            // CustomListProduct(
            //   title: 'Most Selling',
            //   onTapText: () {},
            // ),
            // SizedBox(
            //   height: 30.h,
            // ),
            // CustomListProduct(title: 'Recent Added', onTapText: () {},),
          ],
        ),
      ),
    );
  }
}
