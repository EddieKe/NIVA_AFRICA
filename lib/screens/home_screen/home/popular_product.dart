import 'package:flutter/material.dart';
import 'package:niva/models/product.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/screens/home_screen/home/text_title.dart';
import 'package:niva/data/data_provider.dart';
import 'package:niva/screens/home_screen/home/product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    DataProvider dataProvider = DataProvider(); // Creating an instance

    return StreamBuilder<List<Product>>(
      stream: dataProvider.productsStream(), // Accessing the instance method
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Damn it snafu again!");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        var products = snapshot.data;

        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
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
                // For demonstration, let's hardcode a ProductCard
                if (index == 0) {
                  return ProductCard(
                      product: Product(
                    id: 999,
                    title: "Hardcoded Product",
                    price: 99.99,
                    images: ["some_url_here"],
                    description: "This product is hardcoded for testing",
                  ));
                }

                return ProductCard(product: product);

                // print(
                // "Rendering product: ${product.title}"); // Add this line for debugging
                // return ProductCard(product: product);
              },
            ),
          ],
        );
      },
    );
  }
}
