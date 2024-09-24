import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when page Scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpTo(page.toDouble());
    }
  }

  ///Update Current INdex & jump to the last page
  void skipPage() {
    currentPageIndex.value = 3;
    pageController.jumpTo(2);
  }
}
