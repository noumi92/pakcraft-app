import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pakcraftstore/features/authentication/views/login/login_view.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/utils/constants/text_strings.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:(){Get.offAll(const LoginView());}, icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -Image with 60% of screen width
            Image(
              image: AssetImage(TImages.deliveredEmailIllustration),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            /// -Title and Subtitle
            Text(
              TTexts.resetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.resetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            /// -Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: const Text("Done"),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){},
                child: const Text("Resend Email"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
