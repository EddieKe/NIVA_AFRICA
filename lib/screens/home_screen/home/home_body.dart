import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen/home/custom_banner.dart';
import 'package:niva/widgets/categories.dart';
import 'special_offers.dart';
import 'popular_product.dart'; // Ensure this is the correct import for PopularProducts
import 'popular_services.dart'; // Ensure this is the correct import for PopularServices
import 'package:niva/models/product.dart';
import 'package:niva/models/service.dart';
import 'package:niva/utilities/dimensions2.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example data for the products
    final List<Product> productsList = [
      Product(
        id: 1,
        title: "Laroche Posay Moisturizer",
        price: 2250,
        images: ["assets/image/laroche3.jpg"],
        isFavourite: false,
        description: 'Mositurize your face with our Laroche Moisturizer',

        // Other fields here...
      ),
      Product(
        id: 2,
        title: "Lipstick",
        price: 1500,
        images: ["assets/image/lipstick2.jpg"],
        isFavourite: true, description: '',
        // Other fields here...
      ),
      // Add more products if needed
    ];

    // Example data for the services
    final List<Service> servicesList = [
      Service(
        id: 1,
        title: "Artificial Locs",
        price: 2500,
        images: ["assets/image/locs.jpg"],
        description: 'Articila locs are protective hairstyle ',
        location: 'Nairobi MAchakos',
        provider: 'Eddie Makeup',
        isFavourite: true,
      ),
      Service(
        id: 2,
        title: "Nails",
        price: 1500,
        images: ["assets/image/nail2.jpg"],
        provider: 'Stylish nails',
        description:
            'Beautifully and well crafted nails.This a well work of Tips and Nails',
        location: 'Nairobi Cbd',
        isFavourite: true,
      ),
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
