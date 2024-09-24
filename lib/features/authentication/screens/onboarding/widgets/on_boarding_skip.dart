import 'package:flutter/material.dart';
import 'package:softease/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppSizes.defaultSpace,
      top: AppDeviceUtils.getAppBarHeight(),
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Text('Skip'),
      ),
    );
  }
}
