import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:niva/components/main_components.dart/no_account_text.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/screens/login_screen/login/login_form.dart';

class SocalCard extends StatelessWidget {
  final String icon;
  final Function press;
  const SocalCard({Key? key, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: SizedBox(
        height: getProportionateScreenHeight(30),
        width: getProportionateScreenWidth(30),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                const Text("You have been missed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    )),
                SizedBox(height: Dimensions2.screenHeight * 0.08),
                const LoginForm(),
                SizedBox(height: Dimensions2.screenHeight * 0.08),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: getProportionateScreenHeight(80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenHeight(100)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocalCard(
                          icon: "assets/image/icons/google-icon.svg",
                          press: () {},
                        ),
                        SizedBox(width: getProportionateScreenWidth(50)),
                        SocalCard(
                          icon: "assets/image/icons/apple-icon.svg",
                          press: () {},
                        ),
                        SizedBox(width: getProportionateScreenWidth(50)),
                        SocalCard(
                          icon: "assets/image/icons/twitter-icon.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
