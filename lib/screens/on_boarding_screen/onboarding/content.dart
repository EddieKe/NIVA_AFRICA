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
          flex: 5,
        ),
        Text(
          text!,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Color(0xFF964B00),
            fontSize: 20,
          ),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
