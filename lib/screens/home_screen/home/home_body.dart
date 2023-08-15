// HomeBody.dart

import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen/home/custom_banner.dart';
import 'package:niva/widgets/categories.dart';
import 'special_offers.dart';
import 'popular_product.dart';
import 'popular_services.dart'; // Import popular_services file
import 'package:niva/models/product.dart'; // Import Product model
import 'package:niva/models/service.dart'; // Import Service model
import 'package:niva/utilities/dimensions2.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example data for the products
    final List<Product> productsList = [
      // Add Product instances here
    ];

    // Example data for the services
    final List<Service> servicesList = [
      // Add Service instances here
    ];

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(
              products: productsList,
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularServices(
              services: servicesList,
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
