import 'package:flutter/material.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/screens/log_in_screen.dart';
import 'package:niva/utilities/dimensions2.dart';

import 'package:niva/components/splash/content.dart';
import 'package:niva/components/main_components.dart/default_button.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});
  static String routeName = "/log_in";

  @override
  // ignore: library_private_types_in_public_api
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome to NIVA!", "image": "assets/image/splash1.png"},
    {
      "text":
          "We help people meet their beauty and hair needs \n by connecting them with verified and quality hair and beauty service provides",
      "image": "assets/images/splash2.png"
    },
    {
      "text": "Buy any hair and beauty product and we'll deliver",
      "image": "assets/images/splash3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => Content(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
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
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: nAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? nPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
