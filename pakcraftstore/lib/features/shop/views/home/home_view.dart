import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/custom_shapes/containers/primary_header_container.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/device/device_utility.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/search_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          /// -header
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                /// --appbar
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --searchbar
                TSearchContainer(
                  text: "Search to App",
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --categories
                /// ---Categories heading
                TSectionHeading(
                  title: 'Popular Products',
                  showActionButton: false,
                  textColor: TColors.white,
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// ---Categories icons
                THomeCategories()
              ],
            ),
          )
        ],
      )),
    );
  }
}


