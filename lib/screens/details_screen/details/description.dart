import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niva/models/product.dart';
// import 'package:niva/widgets/small_text.dart';
import 'package:niva/widgets/expandable_text_widget.dart';

// import 'package:niva/utilities/constants.dart';
import 'package:niva/utilities/dimensions2.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: product.isFavourite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SizedBox(
              height: getProportionateScreenWidth(16),
              child: Icon(
                CupertinoIcons.heart,
                color: product.isFavourite
                    ? const Color(0xFFFF4848)
                    : const Color(0xFFDBDEE4),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: const ExpandableTextWidget(
            text:
                "Indulge in Laroche Posay's luxurious moisturizing concoction; a haven for parched skin that's been yearning for a loving embrace. No longer a distant dream, this soothing balm brings life back to faces thirsting for sustenance. From the first application, one can witness a transformation. That's right, tired skin shall wear a new cloak of invigoration./nDon't you fret about harsh chemicals; this magical blend caters to sensitive skin as well. Through a harmonious amalgamation of nutrients, one finds a sense of tranquility. You'll dance to the gentle caress of a breeze, under the glow of a tender sun. Dab it on; lose yourself in a symphony of softness, a melody of moisture./nFor those tough days when your visage needs a friend, this elixir stands ready. Weathered by wind, scorched by sun, or chilled by cold, a simple touch of Laroche Posay shall restore your glory. With every application, you're not simply moisturizing; you're embarking on a ritual of beauty./nWhy settle for ordinary when extraordinary awaits? Elegantly packed, invitingly fragrant, and brimming with a promise, this ain't merely a moisturizer. It's a ticket to a grand gala of glamour. So what are you waiting for? Come and grab this precious potion; give your skin the love it earnestly deserves. Feel beautiful, inside out!",
          ),
        )
      ],
    );
  }
}
