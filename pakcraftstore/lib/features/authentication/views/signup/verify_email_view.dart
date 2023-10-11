import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/success_view/success_view.dart';
import 'package:pakcraftstore/features/authentication/views/login/login_view.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/utils/constants/text_strings.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginView()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -Image
              Image(image: const AssetImage(
                  TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              /// -Title & SubTitle
              Text(TTexts.verifyEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text("noumi@mail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.verifyEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              /// -Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () {
                  Get.to(SuccessView(
                    image: TImages.successIllustration,
                    title: TTexts.createdAccountTitle,
                    subtitle: TTexts.createdAccountSubTitle,
                    onPressed: (){Get.to(const LoginView());},
                  ));
                },
                child: const Text("Continue"),),
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: OutlinedButton(
                onPressed: () {  },
                child: const Text("Resend Email"),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
