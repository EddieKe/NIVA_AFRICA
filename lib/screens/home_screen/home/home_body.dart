// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen/home/custom_banner.dart';
import 'package:niva/widgets/categories.dart';
import 'special_offers.dart';
import 'popular_product.dart';

import 'package:niva/utilities/dimensions2.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(
              products: const [],
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
