import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<Map<String, dynamic>> productList = [
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
    return GridView.builder(
      itemCount: productList.length,
      itemBuilder: (_, index){
        return GridView.builder(gridDelegate: SilverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2
      ), itemBuilder: (BuildContext context, int index) {  },);
  //    },
   //   gridDelegate: 
    //  itemBuilder(BuildContext context, int index){
    //    return SingleProd(
    //      prodName:product_list[index]['name'],
     //     prodPicture: product_list[index]['picture'],
     //    prodLocation: product_list[index]['Nairobi'],
    //      prodVendor: product_list[index]['Make up by Mercy'],
   //     );
    //  },

  //  );
 // }
}

class SingleProd extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
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
