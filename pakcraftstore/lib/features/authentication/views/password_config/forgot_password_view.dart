import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/features/authentication/views/password_config/reset_password_view.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -Headings
            Text(
              TTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections * 2,
            ),

            /// -Text Field
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            /// -Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(
              onPressed: (){
                Get.off(const ResetPasswordView());
              },
              child: const Text(TTexts.submit),
            ),)
          ],
        ),
      ),
    );
  }
}
