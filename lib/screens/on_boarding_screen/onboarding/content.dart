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
        Stack(
          children: [
            Positioned(
              left: 17,
              bottom: 576,
              child: Text(
                text!,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color.fromARGB(255, 253, 252, 251),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
