import 'package:flutter/material.dart';
import 'package:softease/utils/constants/colors.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';
import 'package:softease/utils/helpers/helper_functions.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Expanded(
          child: Text.rich(
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            TextSpan(children: [
              TextSpan(text: '${AppText.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${AppText.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                      )),
              TextSpan(text: '${AppText.and} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${AppText.termOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                      )),
            ]),
          ),
        ),
      ],
    );
  }
}
