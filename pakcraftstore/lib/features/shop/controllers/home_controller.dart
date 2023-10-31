import 'package:get/get.dart';

class HomeController extends GetxController{
  final corousalCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    corousalCurrentIndex.value = index;
  }

}