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
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 70,
          title: const Row(
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
            preferredSize: const Size.fromHeight(20),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                  top: Dimensions.height10 / 2, bottom: Dimensions.height10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )),
              child: Center(
                child: BigText(
                  text: "Naziri Lipstick",
                  size: Dimensions.font26,
                ),
              ),
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
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: const ExpandableTextWidget(
                    text:
                        "Introducing our new lipstick product, perfect for any occasion! Our creamy and long-lasting formula glides on smoothly, delivering a vibrant and rich color that lasts for hours. The luxurious finish is both hydrating and nourishing, leaving your lips feeling soft and supple. With a wide range of shades to choose from, there's a color for everyone. Whether you're looking for a bold red or a subtle nude, this lipstick is sure to become your go-to choice. Plus, with our easy-to-use ecommerce app, ordering and receiving your new favorite lipstick has never been easier. Get ready to elevate your makeup game with our fabulous new lipstick!"),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.height20 * 2.5,
              right: Dimensions.height20 * 2.5,
              bottom: Dimensions.height10,
              top: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: AppColors.iconColor1,
                    backgroundColor: Colors.white,
                    icon: Icons.remove),
                // ignore: prefer_adjacent_string_concatenation
                BigText(text: "Ksh1500X0"),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: AppColors.iconColor1,
                    backgroundColor: Colors.white,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: AppColors.mainBrown,
                      backgroundColor: Colors.white,
                      icon: Icons.favorite_sharp),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.mainBrown,
                      borderRadius: BorderRadius.circular(Dimensions.radius20)),
                  child: BigText(
                    text: "Ksh 1500| Order",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
