import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final views = [
    Container(color: Colors.green,),
    Container(color: Colors.deepOrange,),
    Container(color: Colors.deepPurple,),
    Container(color: Colors.teal,),
  ];

  void updateIndex(){

  }
}