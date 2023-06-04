import 'package:flutter/material.dart';

class Row extends StatelessWidget {
  const Row({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
