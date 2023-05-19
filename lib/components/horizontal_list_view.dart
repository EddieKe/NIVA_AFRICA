import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: Dimensions.height45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Categories(
            imageCaption: 'Lipies',
            imageLocation: 'assets/image/lipie.jpg',
          ),
          Categories(
            imageCaption: 'Nails',
            imageLocation: 'assets/image/nai.jpg',
          ),
          Categories(
            imageCaption: 'Makeup',
            imageLocation: 'aassets/image/mer.jpg',
          ),
          Categories(
            imageCaption: 'Makeup',
            imageLocation: 'assets/image/li.jpg',
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  const Categories(
      {Key? key, required this.imageLocation, required this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: null,
        // ignore: sized_box_for_whitespace
        child: Container(
          width: Dimensions.height20 * 5,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: Dimensions.font20 * 5,
              height: Dimensions.height20 * 4,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter, child: Text(imageCaption)),
          ),
        ),
      ),
    );
  }
}
