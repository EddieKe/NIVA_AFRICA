import 'package:flutter/material.dart';
import 'package:niva/components/home/product_card.dart';
import 'package:niva/models/product.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/components/home/text_title.dart';

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
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                products.length,
                (index) {
                  if (products[index].isPopular) {
                    return ProductCard(product: products[index]);
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
