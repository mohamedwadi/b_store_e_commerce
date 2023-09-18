import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/routes/routes.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:b_store_e_commerce/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
          (){
       // Navigator.pushReplacementNamed(context, Routes.onboardingScreen);
        Navigator.of(context).pushReplacementNamed(Routes.onboardingScreen);

          },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(ImagesPath.logoApp )
      ),
    );
  }
}
