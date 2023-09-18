import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContentPageView extends StatelessWidget {
  const CustomContentPageView({
    super.key,
    required this.supTitle,
    required this.title,
    required this.imageName
  });

  final String imageName;
  final String title;
  final String supTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(start: 82.w ,end: 82.w , top: 80.h),
      child: Column(
        children: [
          CustomText(text: title,color: Color(0xff1B2A3B), weight: FontWeight.bold, size: 23,),
          SizedBox(height: 8.h,),
          CustomText(textAlign: TextAlign.center ,text: supTitle ,color: Color(0xff1B2A3B), weight: FontWeight.w400
            , size: 15,),
          SizedBox(height: 30.h,),
          Image.asset(imageName ,width: 241.w,height: 289.h,)
        ],
      ),
    );
  }
}

