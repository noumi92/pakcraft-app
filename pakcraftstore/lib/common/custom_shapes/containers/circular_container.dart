import 'package:flutter/material.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';

class TCircularWidget extends StatelessWidget {
  const TCircularWidget({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.bgColor = TColors.white,
  });
  final double? width, height;
  final double radius, padding;
  final Widget? child;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: bgColor
      ),
      child: child,
    );
  }
}