import 'package:flutter/material.dart';
import 'package:niva/widgets/custom_drawer.dart';
import 'package:niva/widgets/custom_banner.dart';
import 'package:niva/widgets/categories.dart';
import 'special_offers.dart';
import 'popular_product.dart';
import 'package:niva/components/main_components.dart/custom_nav.dart';

import 'package:niva/utilities/dimensions2.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomDrawer(),
            CustomBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const PopularProducts(
              products: [],
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
            //           CustomBottomNavBar(selectedMenu: MenuState.home),
          ],
        ),
      ),
    );
  }
}
