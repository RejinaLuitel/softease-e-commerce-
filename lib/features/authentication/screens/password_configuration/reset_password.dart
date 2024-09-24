import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            //Heading
            Text(AppText.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(AppText.forgetPasswordTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: AppSizes.spaceBtwSections * 2),

            //Text Field
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: AppText.email),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            //Submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(AppText.submit),
                )),
          ],
        ),
      ),
    );
  }
}
