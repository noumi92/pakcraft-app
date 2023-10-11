import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/features/authentication/views/login/login_view.dart';
import 'package:pakcraftstore/features/onboarding/view/onboarding_view.dart';
import 'package:pakcraftstore/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: LoginView(),
    );
  }
}