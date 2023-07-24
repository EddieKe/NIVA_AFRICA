import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/widgets/app_icons.dart';
import 'package:niva/widgets/app_column.dart';
import 'package:niva/widgets/big_text.dart';
import 'package:niva/utilities/colors.dart';
import 'package:niva/widgets/expandable_text_widget.dart';

class PopularServices extends StatelessWidget {
  const PopularServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularSerImagSize,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/image6.jpg")),
                ),
              )),
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularSerImagSize - 20,
            child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(
                      text: "Full Makeup Services",
                    ),
                    SizedBox(height: Dimensions.height20),
                    BigText(
                      text: "Description",
                      size: Dimensions.font26,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const Expanded(
                        child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Our makeup service is designed to help you look and feel your best for any occasion. Whether you're attending a special event, preparing for a photoshoot, or just want to treat yourself to a professional makeup application, our skilled makeup artists are here to help."),
                    ))
                  ],
                )),
          )
        ],
      ),
      bottomNavigationBar: Container(
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
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.textColor1,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const Icon(Icons.add, color: AppColors.textColor1),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                ],
              ),
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
    );
  }
}
