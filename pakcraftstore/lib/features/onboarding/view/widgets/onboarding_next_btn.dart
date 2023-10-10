import 'package:flutter/material.dart';
import 'package:pakcraftstore/features/onboarding/controller/onboarding_controller.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/device/device_utility.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

class OnboardingNextBtn extends StatelessWidget {
  const OnboardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), backgroundColor: isDark ? TColors.white : Colors.black),
          onPressed: () => OnboardingController.instance.nextPage(),
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: TColors.lightBG,
          ),
        ));
  }
}