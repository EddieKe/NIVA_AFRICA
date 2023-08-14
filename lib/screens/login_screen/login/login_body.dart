import 'package:flutter/material.dart';
import 'package:niva/components/main_components.dart/no_account_text.dart';
import 'package:niva/components/main_components.dart/socal_card.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/screens/login_screen/login/login_form.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Dimensions2.screenHeight * 0.04),
                Text(
                  "Welcome Back to Niva",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: Dimensions2.screenHeight * 0.08),
                const LoginForm(),
                SizedBox(height: Dimensions2.screenHeight * 0.08),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  height: getProportionateScreenHeight(140),
                  width: getProportionateScreenHeight(50),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenHeight(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocalCard(
                            icon: "assets/icons/google-icon.svg",
                            press: () {},
                          ),
                          const Text("Sign in with Google")
                        ],
                      ),
                      SizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              // Handle Apple Sign In
                            },
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/icons/apple-icon.svg"), // Apple SVG icon
                                const Text("Sign in with Apple")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
