import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/features/shop/views/home/home_VIEW.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final views = [
    const HomeView(),
    Container(color: Colors.deepOrange,),
    Container(color: Colors.deepPurple,),
    Container(color: Colors.teal,),
  ];

  void updateIndex(){

  }
}