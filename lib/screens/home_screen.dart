import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/components/horizontal_list_view.dart';
import 'package:niva/widgets/banner.dart';
import 'package:niva/components/products.dart';
import 'package:niva/widgets/small_text.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
              ),
              Banner(),

              SmallText(text: "Categories"),
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
        ],
      ),
    );
  }
}