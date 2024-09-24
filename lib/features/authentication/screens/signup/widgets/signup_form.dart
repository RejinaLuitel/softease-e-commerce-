import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: AppText.firstName)),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: AppText.lastName)),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user_edit), labelText: AppText.userName)),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct), labelText: AppText.email)),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.call), labelText: AppText.phoneNo)),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          //Password
          TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              )),
          const SizedBox(height: AppSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
