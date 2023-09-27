import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';

class CustomPopUpMenu extends StatelessWidget {
  const CustomPopUpMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert, color: ManagerColors.appButtonColor),
      // add this line
      color: Colors.white,
      padding: EdgeInsetsDirectional.only(bottom: 10),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: CustomText(
              text: 'Sort by price',
              size: 12,
              weight: FontWeight.w600,
              color: ManagerColors.textInputColor,
            ),
            value: 'Sort by price',
          ),
          PopupMenuDivider(
            height: 0,
          ),
          PopupMenuItem(
            child: CustomText(
              text: 'Sort by date',
              size: 12,
              weight: FontWeight.w600,
              color: ManagerColors.textInputColor,
            ),
            value: 'Sort by date',
          ),
          PopupMenuDivider(
            height: 0,
          ),
          PopupMenuItem(
            child: CustomText(
              text: 'Remove all items',
              size: 12,
              weight: FontWeight.w600,
              color: ManagerColors.colorBeforeDiscount,
            ),
            value: 'Remove all items',
          )
        ];
      },
      onSelected: (selectedItem) {
        // write code
      },
    );
  }
}
