import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:softease/common/styles/spacing_styles.dart';
import 'package:softease/utils/constants/text_string.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';
import '../../../../common/widgets/login_signup/social_media_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title, & sub-title
              const LoginHeader(),

              //Form
              const LoginForm(),

              //Divider
              FormDivider(dividerText: AppText.orSignInWith.capitalize!),

              //Footer
              const SocialMediaButton()
            ],
          ),
        ),
      ),
    );
  }
}
