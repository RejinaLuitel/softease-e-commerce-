import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softease/common/widgets/success_screen/success_screen.dart';
import 'package:softease/utils/constants/image_string.dart';
import 'package:softease/utils/constants/sizes.dart';
import 'package:softease/utils/constants/text_string.dart';
import 'package:softease/utils/helpers/helper_functions.dart';

import '../login/login.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const LoginScreen());
              },
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(
                  AppImages.deliverEmailIllustration,
                ),
                width: AppHelperFunction.screenWidth(),
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Title & SubTitle
              Text(AppText.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text("support@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(AppText.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          image: AppImages.staticSuccessIllustration,
                          title: AppText.yourAccountCreatedTitle,
                          subTitle: AppText.yourAccountCreatedSubTitle,
                        )),
                    child: const Text(AppText.tContinue)),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text(AppText.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
