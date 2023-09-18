import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_app_bar.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_product_cart.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  int selectedIconsBottom = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
        boxShadow:[
        BoxShadow(
        color: ManagerColors.colorBottomIconUnSelected,
        blurRadius: 3,
    ),
    ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: ManagerColors.appColor,
          currentIndex: selectedIconsBottom,
          unselectedItemColor: ManagerColors.colorBottomIconUnSelected,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold
          ),unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500
          ),
          onTap:(index){
            setState(() {
              selectedIconsBottom = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'
            ),   BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'
            ),BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profile'
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            CustomAppBar(
              leadingIcons: Icons.arrow_back_ios_new,
              trailingIcons: Icons.more_vert_outlined,
              sizeTrailingIcons: 24.w,
              title: 'Back',
              sizeLeadingIcons: 20.h,
              onTapLeading: () {},
              onTapTrailing: () {},
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CustomCartProduct(
                        title: 'Tag Heuer Wristwatch',
                        priceAfterDiscount: 500,
                        priceBeforeDiscount: 1200,
                        image: ImagesPath.productImageDetails,
                      ),
                      Divider(
                        height: 30,
                        thickness: 1,
                        indent: 30.w,
                        endIndent: 30.w,
                        color: Color(0xff000000).withOpacity(0.10),
                      ),
                    ],
                  );
                },
                itemCount: 5,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              text: 'Total Items: 4 Items',
              size: 14,
              weight: FontWeight.w600,
              color: ManagerColors.colorAfterDiscount,
            ),
            SizedBox(
              height: 11.h,
            ),
            CustomText(
              text: 'Total Price: \$266',
              size: 16,
              weight: FontWeight.bold,
              color: Color(0xff0D213F),
            ),
            SizedBox(
              height: 55.h,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              height: 50.h,
              margin: EdgeInsetsDirectional.symmetric(horizontal: 45.w),
              child: CustomButton(
                onTap: () {},
                text: 'Proceed to Checkout',
                textSize: 14,
                fontWeight: FontWeight.w600,
                color: ManagerColors.appButtonColor,
                colorText: ManagerColors.colorTextButton,
                redious: 10,
              ),
            ),
            SizedBox(height: 30.h,)
          ],
        ),
      ),
    );
  }
}
