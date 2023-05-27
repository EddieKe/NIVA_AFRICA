import 'package:flutter/material.dart';

import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/components/main_components.dart/default_button.dart';

class Body extends StatelessWidget {
  static const String routeName = '/homeScreen';
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Dimensions2.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: Dimensions2.screenHeight * 0.4, //40%
        ),
        SizedBox(height: Dimensions2.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: Dimensions2.screenHeight * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              // Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
