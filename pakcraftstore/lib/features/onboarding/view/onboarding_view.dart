import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/features/onboarding/controller/onboarding_controller.dart';
import 'package:pakcraftstore/features/onboarding/view/widgets/onboarding_page.dart';
import 'package:pakcraftstore/features/onboarding/view/widgets/onboarding_dot_navigation.dart';
import 'package:pakcraftstore/features/onboarding/view/widgets/onboarding_skip_btn.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/constants/text_strings.dart';
import 'package:pakcraftstore/utils/device/device_utility.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';
import 'widgets/onboarding_next_btn.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      body: Stack(
        children: [
          /// horizontal scroll page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// skip button
          OnboardingSkipBtn(),

          /// dot navigation SmoothPageIndicator
          OnboardingDotNavigation(),

          /// circular button
          OnboardingNextBtn()
        ],
      ),
    );
  }
}








