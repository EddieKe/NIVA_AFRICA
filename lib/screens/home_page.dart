import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/components/horizontal_list_view.dart';
import 'package:niva/widgets/banner.dart';
import 'package:niva/components/products.dart';
import 'package:niva/widgets/small_text.dart';

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
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          ListView(
            children: const <Widget>[
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
