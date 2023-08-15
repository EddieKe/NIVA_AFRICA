import 'package:flutter/material.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/screens/login_screen/log_in_screen.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/widgets/eclipse.dart';
import 'package:video_player/video_player.dart';

import 'package:niva/screens/on_boarding_screen/onboarding/content.dart';
import 'package:niva/components/main_components.dart/default_button.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);
  static String routeName = "/log_in";

  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int currentPage = 0;
  late VideoPlayerController _controller;
  List<Map<String, String>> splashData = [
    {
      "text": "Empower Yourself\nWith Expert Hair\nAnd Beauty Insights",
    },
    {
      "text": "Discover the perfect\nProducts and services for you",
    },
    {
      "text":
          "Indulge in Endless Beauty Options\nWith Our Abundance of Services & Products",
    },
  ];
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/image/onboard.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          _controller.value.isInitialized
              ? SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: _controller.value.size.width,
                      height: _controller.value.size.height,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                )
              : Container(),
          const Positioned(
            top: 0,
            right: 0,
            child: Eclipse(),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: getProportionateScreenWidth(20)),
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
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: nAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height:getProportionateScreenHeight(6),
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? nPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(getProportionateScreenHeight(3)),
      ),
    );
  }
}
