import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_content_page_view.dart';
import 'package:flutter/material.dart';


class BodyPageView extends StatelessWidget {
  const BodyPageView(
      {Key? key,
        required this.currentPage,
        required this.pageController,
        required this.onTap})
      : super(key: key);

  final PageController pageController;
  final int currentPage;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        physics: BouncingScrollPhysics(),
        controller: pageController,
        onPageChanged: onTap,
        children: const [
          CustomContentPageView(
            title: 'Simply',
            supTitle: 'Select your photographer,\nthen go to session!',
            imageName: ImagesPath.OnBoarding2,
          ),
          CustomContentPageView(
            title: 'hello',
            supTitle: 'Select your photographer,\nthen go to session!',
            imageName: ImagesPath.OnBoarding4,
          ),
          CustomContentPageView(
            title: 'word',
            supTitle: 'Select your photographer,\nthen go to session!',
            imageName: ImagesPath.OnBoarding3,
          ),
        ],
      ),
    );
  }
}
