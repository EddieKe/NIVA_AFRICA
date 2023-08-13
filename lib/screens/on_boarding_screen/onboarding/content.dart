import 'package:flutter/material.dart';

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
        const Spacer(
          flex: 1,
        ),
        Positioned(
          left: 17,
          bottom: 576,
          child: Text(
            text!,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Color(0xFF964B00),
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
