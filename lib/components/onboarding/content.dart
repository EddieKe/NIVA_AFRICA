import 'package:flutter/material.dart';

import 'package:niva/utilities/colors.dart';
import 'package:niva/utilities/dimensions2.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          "NIVA",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: AppColors.mainBrown,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
