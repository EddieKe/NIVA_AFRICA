import 'package:flutter/material.dart';
import 'package:niva/widgets/big_text.dart';
import 'package:niva/widgets/small_text.dart';
import 'package:niva/widgets/icon_and_text_widget.dart';
import 'package:niva/utilities/dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(text: "Affrodable Makeup Srevices hit us today"),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Active",
                iconColor: Colors.green),
            IconAndTextWidget(
                icon: Icons.location_on, text: "2km", iconColor: Color(0xFF)),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "1hr",
                iconColor: Colors.orange),
          ],
        )
      ],
    );
  }
}
