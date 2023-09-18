import 'package:b_store_e_commerce/constant/routes/routes.dart';
import 'package:b_store_e_commerce/view/auth/forget_password_screen.dart';
import 'package:b_store_e_commerce/view/auth/sign_in_screen.dart';
import 'package:b_store_e_commerce/view/auth/sign_up_screen.dart';
import 'package:b_store_e_commerce/view/cart/cart_screen.dart';
import 'package:b_store_e_commerce/view/catogry/product_details_screen.dart';
import 'package:b_store_e_commerce/view/home/home_screen.dart';
import 'package:b_store_e_commerce/view/onboarding/onboarding_screen.dart';
import 'package:b_store_e_commerce/view/setting/profile_screen.dart';
import 'package:b_store_e_commerce/view/splash/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375 , 812) ,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
            theme: ThemeData(
                useMaterial3: true
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              Routes.splashScreen : (context) => const SplashScreen(),
              Routes.onboardingScreen : (context) => const OnboardingScreen(),
              Routes.signUpScreen : (context) => const SignUpScreen(),
              Routes.signInScreen : (context) => const SignInScreen(),
              Routes.profileScreen : (context) => const ProfileScreen(),
              Routes.homeScreen : (context) => const HomeScreen(),
              Routes.forgetPasswordScreen : (context) => const ForgetPasswordScreen(),
              Routes.productDetailsScreen : (context) => const ProductDetailsScreen(),
              Routes.cartScreen : (context) => const CartScreen(),
            },
            initialRoute: Routes.homeScreen,
          );
      },
    );
  }
}

