import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/widgets/navigation/view/navigation_menu.dart';
import 'package:pakcraftstore/features/authentication/views/login/login_view.dart';
import 'package:pakcraftstore/features/authentication/views/password_config/forgot_password_view.dart';
import 'package:pakcraftstore/features/authentication/views/signup/signup_view.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              /// --email field
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: "Enter Email"),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              /// --password field
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: "Enter Password",
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields / 2,
              ),

              /// --Remember me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// ---Remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text("Remember Me"),
                    ],
                  ),

                  /// ---Forget password
                  TextButton(
                      onPressed: () {
                        Get.to(const ForgotPasswordView());
                      },
                      child: const Text("Forget Password")),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// --Sign in button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(NavigationMenu());
                    }, child: const Text("Sign In")),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// --Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Get.to(const SignupView());
                    }, child: const Text("Create Account")),
              ),
            ],
          ),
        ));
  }
}