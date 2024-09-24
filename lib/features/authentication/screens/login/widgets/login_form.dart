import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:softease/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:softease/features/authentication/screens/signup/signup.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppText.email,
              ),
            ),

            //Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(
              height: AppSizes.spaceBtwInputFields / 2,
            ),

            //Remember Me & forget Password
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(AppText.rememberMe),
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () {
                    Get.to(() => const ForgetPasswordScreen());
                  },
                  child: const Text(AppText.forgetPassword),
                ),
              ],
            ),

            const SizedBox(height: AppSizes.spaceBtwSections),

            //Sign In Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(AppText.signIn))),
            const SizedBox(height: AppSizes.spaceBtwItems),

            //Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()), child: const Text(AppText.createAccount))),
          ],
        ),
      ),
    );
  }
}
