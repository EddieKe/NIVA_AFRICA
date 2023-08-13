import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/utilities/constants.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Dimensions2.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +254701440449"),
              buildTimer(),
              const OtpForm(),
              SizedBox(height: Dimensions2.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: nPrimaryColor),
          ),
        ),
      ],
    );
  }
}
