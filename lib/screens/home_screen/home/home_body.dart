import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen/home/custom_banner.dart';
import 'package:niva/widgets/categories.dart';
import 'special_offers.dart';
import 'popular_product.dart';
import 'popular_services.dart';

import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/data/data_provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsList = DataProvider.getProducts();
    final servicesList = DataProvider.getServices();

  

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
