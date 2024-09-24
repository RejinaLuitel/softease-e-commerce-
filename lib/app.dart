import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softease/utils/theme/theme.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme,
      title: 'Soft Ease',
      theme: AppTheme.lightTheme,
      home: const OnBoardingScreen(),
    );
  }
}
