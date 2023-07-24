import 'package:flutter/material.dart';
import 'package:niva/screens/on_boarding_screen/onboarding/on_boarding_body.dart';
import 'package:niva/utilities/dimensions2.dart';

class OnBoardingScreen extends StatelessWidget {
  static String routeName = "/logIn";

  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Dimensions2().init(context);
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
