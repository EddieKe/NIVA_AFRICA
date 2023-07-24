import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen/home/product_card.dart';
import 'package:niva/models/product.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/screens/home_screen/home/text_title.dart';

class PopularProducts extends StatelessWidget {
  final List<Product> products; // Add this line

  const PopularProducts({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: TextTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GridView.builder(
              //Grid view builder
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                Product product = products[index];
                return ProductCard(
                  product: product,
                );
              },
            )),
      ],
    );
  }
}
