import 'package:flutter/material.dart';

class ScreenHeightInitializer extends StatelessWidget {
  final Widget child;

  const ScreenHeightInitializer({required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight,
      child: child,
    );
  }
}
