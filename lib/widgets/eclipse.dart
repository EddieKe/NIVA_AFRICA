import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions2.dart';

class Eclipse extends StatelessWidget {
  const Eclipse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenHeight(250),
      height: getProportionateScreenHeight(250),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(150, 75, 0, 0.91),
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        "assets/image/makeup2.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
