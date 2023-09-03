import 'package:flutter/material.dart';
import 'package:niva/models/product.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/screens/home_screen/home/text_title.dart';
import 'package:niva/data/data_provider.dart';
import 'package:niva/screens/home_screen/home/product_card.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DataProvider dataProvider = DataProvider(); // Creating an instance

    return StreamBuilder<List<Product>>(
      stream: dataProvider.productsStream(),  // Accessing the instance method
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("A snafu occurred. Darn it!");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        var products = snapshot.data;

        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: TextTitle(title: "Popular Products", press: () {}),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: products?.length ?? 0,
              itemBuilder: (context, index) {
                Product product = products![index];
                return ProductCard(product: product);
              },
            ),
          ],
        );
      },
    );
  }
}
