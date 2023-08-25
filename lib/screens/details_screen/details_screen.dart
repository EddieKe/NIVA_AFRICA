import 'package:flutter/material.dart';
// import 'package:niva/models/product.dart';
import 'package:niva/screens/details_screen/details/body.dart';
import 'package:niva/screens/details_screen/details/custom_app_bar.dart';
import 'package:niva/widgets/product_details_arguments.dart'; // Make sure to use the correct path here

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: Body(product: agrs.product),
    );
  }
}
