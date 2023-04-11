import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/widgets/small_text.dart';
import 'package:niva/utilities/colors.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(size: Dimensions.font16, text: firstHalf)
          : Column(children: [
              SmallText(
                  text: hiddenText
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf)),
              InkWell(
                onTap: () {
                  setState(() {
                    hiddenText = !hiddenText;
                  });
                },
                child: Row(
                  children: [
                    SmallText(
                      size: Dimensions.font16,
                      text: "Show More",
                      color: AppColors.textColor3,
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: AppColors.textColor3,
                    )
                  ],
                ),
              )
            ]),
    );
  }
}
