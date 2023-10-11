import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/features/authentication/views/login/login_view.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();
  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  /// update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;
  /// jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }
  /// update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(LoginView());
    }else{
      currentPageIndex.value += 1;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }
  /// update current index and jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(currentPageIndex.value);
  }

}