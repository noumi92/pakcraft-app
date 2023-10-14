import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/custom_shapes/containers/primary_header_container.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Container(),
          )
        ],
      )),
    );
  }
}
