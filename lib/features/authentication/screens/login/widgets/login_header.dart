import 'package:flutter/material.dart';
import 'package:softease/utils/constants/image_string.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';
import 'package:softease/utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);

    return Column(
      children: [
        Image(
          height: AppSizes.productImageSize,
          image: AssetImage(
            dark ? AppImages.darkAppLogo : AppImages.lightAppLogo,
          ),
        ),
        Text(AppText.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: AppSizes.sm,
        ),
        Text(
          AppText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
