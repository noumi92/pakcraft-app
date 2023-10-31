import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/custom_shapes/containers/circular_container.dart';
import 'package:pakcraftstore/common/custom_shapes/containers/primary_header_container.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import '../../../../common/widgets/images/rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../controllers/home_controller.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';
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
          ),

          /// -body
          Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.banner1,
                  TImages.banner2,
                  TImages.banner3,
                  TImages.banner4,
                ],
              ))
        ],
      )),
    );
  }
}
