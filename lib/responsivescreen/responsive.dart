import 'package:flutter/material.dart';

class Responsivescreen extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const Responsivescreen(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        // web services
        return webScreenLayout;
      }
      // mob screen
      return mobileScreenLayout;
    });
  }
}
