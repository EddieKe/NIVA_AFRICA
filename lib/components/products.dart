import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var _product_list = [
    {
      "name": "Makeup",
      "location": "Nairobi",
      "price": "1500",
      "picture": "assets/image/li.jpg",
      "vendor": "Makeup by Merci",
    },
    {
      "name": "Lipstick",
      "location": "Nairobi",
      "price": "2500",
      "picture": "assets/image/lipie.jpg",
      "vendor": "Makeup by Merci",
    },
    {
      "name": "Nails",
      "location": "Nairobi",
      "price": "1500",
      "picture": "assets/image/nai.jpg",
      "vendor": "Nails by Done",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPrice;
  final prodLocation;
  final prodPicture;
  final prodVendor;

  const SingleProd({
    Key? key,
    required this.prodName,
    required this.prodPrice,
    required this.prodLocation,
    required this.prodPicture,
    required this.prodVendor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
