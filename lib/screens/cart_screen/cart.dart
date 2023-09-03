import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:niva/screens/cart_screen/cart/cart_body.dart';
// import 'package:niva/screens/cart_screen/cart/checkout_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({Key? key}) : super(key: key);  // Modified this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      // bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          StreamBuilder(
            // Replace with your actual Firestore stream
            stream: FirebaseFirestore.instance.collection('cart').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something went awry');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading...");
              }

              // Get the number of items in cart
              int cartLength = snapshot.data!.docs.length;
              return Text(
                "$cartLength items",
                style: Theme.of(context).textTheme.caption,
              );
            },
          ),
        ],
      ),
    );
  }
}
