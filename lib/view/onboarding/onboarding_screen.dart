import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/constant/routes/routes.dart';
import 'package:b_store_e_commerce/custom_wedjet/body_page_view.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_indaecator_on_boarding.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    // TODO: implement initState
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: 5.w, top: 36.h),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Visibility(
                visible: _currentPage < 2,
                replacement: CustomTextButton(
                  radious: 30,
                  icon: Icons.arrow_forward_outlined,
                  text: 'Start',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, Routes.signUpScreen);
                  },
                  colorButton: ManagerColors.appColor,
                  colorText: Colors.white,
                  alignment: MainAxisAlignment.end,
                ),
                child: CustomTextButton(
                  radious: 30,
                  icon: Icons.arrow_forward_outlined,
                  text: 'Skip',
                  onTap: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                  colorText: Colors.white,
                  colorButton: ManagerColors.appColor,
                  alignment: MainAxisAlignment.end,
                ),
              ),
            ),
          ),

          /*
          page view without refactor
          --------------------------
           */
          // Expanded(
          //   child: PageView(
          //     physics: BouncingScrollPhysics(),
          //     controller: _pageController,
          //     onPageChanged: (int currentPage) {
          //       setState(() {
          //         _currentPage = currentPage;
          //       });
          //     },
          //     children: const [
          //       CustomContentPageView(
          //         title: 'Simply',
          //         supTitle: 'Select your photographer,\nthen go to session!',
          //         imageName: ImagesPath.OnBoarding1,
          //       ),
          //       CustomContentPageView(
          //         title: 'hello',
          //         supTitle: 'Select your photographer,\nthen go to session!',
          //         imageName: ImagesPath.OnBoarding1,
          //       ),
          //       CustomContentPageView(
          //         title: 'word',
          //         supTitle: 'Select your photographer,\nthen go to session!',
          //         imageName: ImagesPath.OnBoarding1,
          //       ),
          //     ],
          //   ),
          // ),

          /*
          page view with refactor
          ------------------------
           */
          BodyPageView(
            currentPage: _currentPage,
            pageController: _pageController,
            onTap: (int currentPage) {
              setState(
                () {
                  _currentPage = currentPage;
                },
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndecatorOnBoardin(
                currentpage: _currentPage == 0,
              ),
              CustomIndecatorOnBoardin(
                currentpage: _currentPage == 1,
              ),
              CustomIndecatorOnBoardin(
                currentpage: _currentPage == 2,
              ),
            ],
          ),
           SizedBox(
            height: 100.h,
          )
        ],
      ),
    );
  }
}
