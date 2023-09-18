import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_app_bar.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_card_profile.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BodyProfileView extends StatelessWidget {
  const BodyProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        CustomAppBar(
          leadingIcons: Icons.arrow_back_ios_new,
          trailingIcons: Icons.edit,
          sizeTrailingIcons: null,
          title: 'Back',
          sizeLeadingIcons: 18,
          onTapLeading: () {},
          onTapTrailing: () {},
        ),
        Container(
          margin: EdgeInsetsDirectional.only(top: 25.h),
          height: 100.h,
          width: 100.h,
          child: CircleAvatar(
            backgroundImage: AssetImage(ImagesPath.manImage),
            backgroundColor: ManagerColors.appColor,
            radius: 50.r,
          ),
        ),
        SizedBox(height: 20.h,),
        CustomText(text: 'Tanya Robinson', color: ManagerColors.textInputColor,size: 20
          , weight: FontWeight.bold,),
        SizedBox(height: 60.h,),
       Column(
         children: [
           CustomCardProfile(
             onTap: (){},
             title: 'Notifications',
             leadingIconColor: ManagerColors.appColor,
             trailingIconColor: ManagerColors.appColor,
             leadingIcons: Icons.notifications,
             trailingIcons: Icons.arrow_forward_ios,
           ),
           CustomCardProfile(
             onTap: (){},
             title: 'My Orders',
             leadingIconColor: ManagerColors.appColor,
             trailingIconColor: ManagerColors.appColor,
             leadingIcons: Icons.add_box,
             trailingIcons: Icons.arrow_forward_ios,
           ),
           CustomCardProfile(
             onTap: (){},
             title: 'Address',
             leadingIconColor: ManagerColors.appColor,
             trailingIconColor: ManagerColors.appColor,
             leadingIcons: Icons.home,
             trailingIcons: Icons.arrow_forward_ios,
           ),
           CustomCardProfile(
             onTap: (){},
             title: 'Payment',
             leadingIconColor: ManagerColors.appColor,
             trailingIconColor: ManagerColors.appColor,
             leadingIcons: Icons.credit_card_sharp,
             trailingIcons: Icons.arrow_forward_ios,
           ),
           CustomCardProfile(
             onTap: (){},
             title: 'Favourites',
             leadingIconColor: ManagerColors.appColor,
             trailingIconColor: ManagerColors.appColor,
             leadingIcons: Icons.favorite,
             trailingIcons: Icons.arrow_forward_ios,
           ),
           CustomCardProfile(
             onTap: (){
               print('object');
             },
             title: 'Settings',
             leadingIconColor: ManagerColors.appColor,
             trailingIconColor: ManagerColors.appColor,
             leadingIcons: Icons.settings,
             trailingIcons: Icons.arrow_forward_ios,
             divider: false,
           ),
         ],
       )

      ],
          ),
    );
  }
}
