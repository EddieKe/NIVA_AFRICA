import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF964B00),
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: color,
        fontSize: size == 0 ? Dimensions.font20 = size : size,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
