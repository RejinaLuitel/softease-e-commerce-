import 'package:flutter/material.dart';
import 'package:softease/utils/constants/colors.dart';
import 'package:softease/utils/constants/image_string.dart';
import 'package:softease/utils/constants/sizes.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(width: AppSizes.iconMd, height: AppSizes.iconMd, image: AssetImage(AppImages.google))),
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: AppSizes.iconMd,
                height: AppSizes.iconMd,
                image: AssetImage(AppImages.facebook),
              )),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
      ],
    );
  }
}
