import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:softease/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:softease/utils/constants/colors.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/device/device_utility.dart';
import 'package:softease/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = AppHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.light : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
