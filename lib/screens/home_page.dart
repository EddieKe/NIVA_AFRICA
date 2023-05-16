import 'package:flutter/material.dart';
import 'package:niva/widgets/big_text.dart';
import 'package:niva/widgets/small_text.dart';
import 'package:niva/home_/main_body.dart';
import 'package:niva/utilities/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Otieno Wagah'),
              accountEmail: Text('otieonwagah@gmail.com'),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: AppColors.iconColor1))),
              decoration: BoxDecoration(
                color: AppColors.iconColor3,
              ),
            ),
            //Drawer Body
            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('My Cart'),
                leading: Icon(Icons.shopping_cart),
              ),
            ),

            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('Become a Seller'),
                leading: Icon(Icons.shop_sharp),
              ),
            ),

            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite_sharp),
              ),
            ),
            const Divider(),
            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            const InkWell(
              onTap: null,
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
