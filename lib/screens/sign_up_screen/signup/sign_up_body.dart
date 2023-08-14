import 'package:flutter/material.dart';
// import 'package:niva/components/main_components.dart/socal_card.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'sign_up_form.dart';
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
                SizedBox(height: Dimensions2.screenHeight * 0.04), // 4%
                Text("Register Account", style: headingStyle),
                const Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: Dimensions2.screenHeight * 0.08),
                const SignUpForm(),
                SizedBox(height: Dimensions2.screenHeight * 0.08),
                
                Container(
                  padding: const EdgeInsets.all(8.0),
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
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
