import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softease/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:softease/utils/constants/image_string.dart';
import 'package:softease/utils/constants/text_string.dart';

import 'widgets/on_boarding_dot_navigation.dart';
import 'widgets/on_boarding_next_button.dart';
import 'widgets/on_boarding_page.dart';
import 'widgets/on_boarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppText.onBoardingTitle1,
                subTitle: AppText.onBoardingTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppText.onBoardingTitle2,
                subTitle: AppText.onBoardingTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppText.onBoardingTitle3,
                subTitle: AppText.onBoardingTitle3,
              ),
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageINdicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
