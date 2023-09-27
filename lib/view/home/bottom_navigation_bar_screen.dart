
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/constant/model/bn_screen.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:b_store_e_commerce/view/cart/cart_screen.dart';
import 'package:b_store_e_commerce/view/catogry/product_details_screen.dart';
import 'package:b_store_e_commerce/view/favourites/favourites_screen.dart';
import 'package:b_store_e_commerce/view/home/home_screen.dart';
import 'package:b_store_e_commerce/view/setting/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _ButtomNavigtionBarState();
}

class _ButtomNavigtionBarState extends State<BottomNavigationBarScreen> {
  List <BnScreen> _screens = [
    BnScreen(screen: HomeScreen()),
    BnScreen(screen: CartScreen() , actionIcons:  PopupMenuButton<String>(
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
    ), ),
    BnScreen(screen: FavouritesScreen() , actionIcons:  PopupMenuButton<String>(
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
    ), ),
    BnScreen(screen: ProfileScreen() , actionIcons:IconButton(
      onPressed: () {},
      icon: Icon(Icons.edit),
      iconSize: 24,
      color: ManagerColors.appButtonColor,
    ),),
  ];

  int selectedIconsBottom = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        elevation: 15,
        selectedItemColor: ManagerColors.appColor,
        currentIndex: selectedIconsBottom,
        unselectedItemColor: ManagerColors.colorBottomIconUnSelected,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        onTap: (index) {
          setState(() {
            selectedIconsBottom = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      appBar: selectedIconsBottom == 0 ? null : AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            SizedBox(
              width: 30.w,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new ,
              ),
              iconSize: 18,
              color: ManagerColors.appButtonColor,
            ),
            CustomText(
              text: 'Back',
              color: ManagerColors.textColor,
              weight: FontWeight.bold,
              size: 16,
            ),
          ],
        ),
        actions: [
          _screens[selectedIconsBottom].actionIcons!,
          SizedBox(
            width: 30.w,
          ),
        ],
      ),
      body: _screens[selectedIconsBottom].screen,
    );
  }
}
