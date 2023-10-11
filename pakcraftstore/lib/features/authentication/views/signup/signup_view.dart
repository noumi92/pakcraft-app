import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/widgets/login_signup/form_divider.dart';
import 'package:pakcraftstore/common/widgets/login_signup/social_buttons.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';
import 'signup_widgets/signup_form.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -Title Text
              Text(
                "Welcome to PakCraftStore...",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              /// -Form
              SignUpForm(isDark: isDark),
              /// -Divider
              TFormDivider(dividerText: 'Or Sign up with'),
              /// -Social Buttons
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


