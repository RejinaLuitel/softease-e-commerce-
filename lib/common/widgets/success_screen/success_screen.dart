import 'package:flutter/material.dart';
import 'package:softease/common/styles/spacing_styles.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';
import 'package:softease/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  final VoidCallback onPressed;
  final String image, title, subTitle;
  const SuccessScreen({
    super.key,
    required this.onPressed,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: AppSpacingStyles.paddingWithAppBarHeight * 2,
      child: Column(
        children: [
          Image(
            image: AssetImage(
              image,
            ),
            width: AppHelperFunction.screenWidth(),
          ),

          const SizedBox(height: AppSizes.spaceBtwSections),

          ///Title & SubTitle
          Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
          const SizedBox(height: AppSizes.spaceBtwItems),

          Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
          const SizedBox(height: AppSizes.spaceBtwSections),

          ///Buttons
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: onPressed, child: const Text(AppText.tContinue)),
          ),
        ],
      ),
    )));
  }
}
