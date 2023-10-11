import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

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
                      onPressed: () {},
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
                    onPressed: () {}, child: const Text("Sign In")),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// --Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {}, child: const Text("Create Account")),
              ),
            ],
          ),
        ));
  }
}