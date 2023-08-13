import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions2.dart';

class Eclipse extends StatelessWidget {
  const Eclipse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenHeight(250),
      height: getProportionateScreenHeight(250),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: const DecorationImage(
          colorFilter: ColorFilter.mode(
            Color.fromRGBO(150, 75, 0, 0.6),
            BlendMode.srcATop,
          ),
          fit: BoxFit.cover,
          image: AssetImage('assets/image/makeup2.jpg'),
        ),
        border: Border.all(),
      ),
    );
  }
}
