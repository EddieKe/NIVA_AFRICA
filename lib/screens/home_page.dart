import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:niva/widgets/big_text.dart';
// ignore: unused_import
import 'package:niva/widgets/small_text.dart';
// ignore: unused_import
import 'package:niva/home_/main_body.dart';
import 'package:niva/utilities/colors.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/components/horizontal_list_view.dart';
import 'package:niva/components/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Widget carousel_slider = Container(
    //  height: Dimensions.height20 * 10,
    //  child: CarouselSlider(

    //    items: [
    //    AssetImage(images/be.jpg)
    //  ], options: options),
    // );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.mainBrown,
        title: const Text("NIVA"),
        actions: const <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        children: const <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
          ),

          Text('Categories'),
          //Horizontal Listview
          HorizontalListView(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
          ),
          Text('Recent Products and Services'),
          //Recent Products Grid view
          Products(),
        ],
      ),
    );
  }
}
