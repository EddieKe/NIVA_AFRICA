import 'package:flutter/material.dart';
import 'package:niva/components/splash/splash_body.dart';
import 'package:niva/utilities/dimensions2.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/logIn";

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Dimensions2().init(context);
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
