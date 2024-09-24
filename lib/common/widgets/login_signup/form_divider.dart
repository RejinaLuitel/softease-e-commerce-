import 'package:flutter/material.dart';
import 'package:softease/utils/constants/colors.dart';
import 'package:softease/utils/helpers/helper_functions.dart';

import '../../../utils/constants/sizes.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
          Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
          Flexible(
              child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
        ],
      ),
    );
  }
}
