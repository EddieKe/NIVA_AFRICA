import 'package:flutter/material.dart';
import 'package:niva/widgets/big_text.dart';
import 'package:niva/widgets/small_text.dart';
import 'package:niva/home_/main_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
                margin: EdgeInsets.only(top: 45, bottom: 15),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Kenya", color: Colors.brown),
                        Row(
                          children: [
                            SmallText(text: "Nairobi", color: Colors.black54),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.brown),
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: MainBody(),
          )),
        ],
      ),
    );
  }
}
