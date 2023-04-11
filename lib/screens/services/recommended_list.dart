import 'package:flutter/material.dart';
import 'package:niva/utilities/colors.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/widgets/big_text.dart';
import 'package:niva/widgets/app_icons.dart';
import 'package:niva/widgets/expandable_text_widget.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              icon: Icons.clear,
            ),
            AppIcon(
              icon: Icons.shopping_cart_outlined,
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Container(
            child: Center(
              child: BigText(
                text: "Naziri Lipstick",
                size: Dimensions.font26,
              ),
            ),
            width: double.maxFinite,
            padding: EdgeInsets.only(
                top: Dimensions.height10 / 2, bottom: Dimensions.height10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                )),
          ),
        ),
        pinned: true,
        backgroundColor: AppColors.mainBrown,
        expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "assests/images/image5.jpg",
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            Container(
              child: ExpandableTextWidget(
                  text:
                      "Introducing our new lipstick product, perfect for any occasion! Our creamy and long-lasting formula glides on smoothly, delivering a vibrant and rich color that lasts for hours. The luxurious finish is both hydrating and nourishing, leaving your lips feeling soft and supple. With a wide range of shades to choose from, there's a color for everyone. Whether you're looking for a bold red or a subtle nude, this lipstick is sure to become your go-to choice. Plus, with our easy-to-use ecommerce app, ordering and receiving your new favorite lipstick has never been easier. Get ready to elevate your makeup game with our fabulous new lipstick!"),
            )
          ],
        ),
      ),
    ]));
  }
}
