import 'package:flutter/material.dart';

class ScreenHeightInitializer extends StatelessWidget {
  final Widget child;
  final double screenHeight; // Add the screenHeight field

  const ScreenHeightInitializer({
    required this.child,
    required this.screenHeight, // Add the required screenHeight parameter
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight,
      child: child,
    );
  }
}
