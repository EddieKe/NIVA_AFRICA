import 'package:flutter/material.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/screens/log_in_screen.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/widgets/eclipse.dart';

import 'package:niva/components/onboarding/content.dart';
import 'package:niva/components/main_components.dart/default_button.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);
  static String routeName = "/log_in";

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Empower Yourself with Expert Hair and Beauty Insights",
    },
    {
      "text": "Discover the perfect products and services for you",
    },
    {
      "text":
          "Indulge in Endless Beauty Options with Our Abundance of Services & Products",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          const Positioned(
            top: 0,
            right: 0,
            child: Eclipse(),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => Content(
                      text: splashData[index]['text'],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        const Spacer(flex: 3),
                        DefaultButton(
                          text: "Get Started",
                          press: () {
                            Navigator.pushNamed(context, LogInScreen.routeName);
                          },
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: nAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: getProportionateScreenHeight(6),
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? nPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(getProportionateScreenHeight(3)),
      ),
    );
  }
}
