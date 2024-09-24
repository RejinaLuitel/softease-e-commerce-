import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:softease/common/styles/spacing_styles.dart';
import 'package:softease/common/widgets/login_signup/form_divider.dart';
import 'package:softease/common/widgets/login_signup/social_media_button.dart';
import 'package:softease/features/authentication/screens/signup/verify_email.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';

import 'widgets/signup_form.dart';
import 'widgets/term_and_condition.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Form(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(AppText.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: AppSizes.spaceBtwSections),

              //SignUp Form
              const SignUpForm(),

              //Term and Condition Checkbox
              const TermAndCondition(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              //SignUp Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const VerifyEmailScreen());
                      },
                      child: const Text(AppText.createAccount))),

              //Divider
              FormDivider(
                dividerText: AppText.orSignUpWith.capitalize!,
              ),

              //Social Button
              const SocialMediaButton(),
            ]),
          ),
        ),
      ),
    );
  }
}
