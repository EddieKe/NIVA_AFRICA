import 'package:flutter/material.dart';
import 'package:niva/utilities/colors.dart';

class Drawer extends StatelessWidget {
  const Drawer({
    super.key,
    required ListView child,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          //header
          UserAccountsDrawerHeader(
            accountName: const Text('Otieno Wagah'),
            accountEmail: const Text('otieonwagah@gmail.com'),
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
    );
  }
}
