import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:softease/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
