import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/state_manager.dart';
import 'package:pakcraftstore/common/widgets/navigation/controller/navigation_controller.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/device/device_utility.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: isDark ? TColors.black : TColors.white,
          indicatorColor: isDark ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "WishList"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.views[controller.selectedIndex.value]),
    );
  }
}
