import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/features/onboarding/controller/onboarding_controller.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/device/device_utility.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

class OnboardingSkipBtn extends StatelessWidget {
  OnboardingSkipBtn({
    super.key,
  });
  final bool isDark = THelperFunctions.isDarkMode(Get.context!);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: Text('Skip', style: TextStyle(color: isDark ? TColors.white : TColors.black),),
        ));
  }
}