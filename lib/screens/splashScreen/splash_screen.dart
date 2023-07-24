import 'package:flutter/material.dart';
import 'package:niva/widgets/small_text.dart';
import 'package:niva/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/utilities/dimensions2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/OnBoarding";

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Dimensions2().init(context); // Initialize Dimensions2

    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the next screen after 5 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: getProportionateScreenHeight(100),
                width: getProportionateScreenWidth(100),
                child: const Image(
                  image: AssetImage("assets/image/niva_logo.jpg"),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            SmallText(
              text: 'Beauty at your fingertips',
              color: nPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
