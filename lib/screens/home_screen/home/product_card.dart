import 'package:flutter/material.dart';
import 'package:niva/models/product.dart';
import 'package:niva/screens/details%20screen/details_screen.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/utilities/dimensions2.dart';
// import '../../../widgets/icon_and_text_widget.dart';

class ProductCard extends StatelessWidget {
  final double width;
  final Product product;

  const ProductCard({
    Key? key,
    this.width = 160, // Increased the default width
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: Container(
        width: getProportionateScreenWidth(width),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200), // Added border
          borderRadius: BorderRadius.circular(15),
        ),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(0)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(product.images[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Container(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                // Description added here
                product.description,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 12,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ksh${product.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: nPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? nPrimaryColor.withOpacity(0.15)
                            : nSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: product.isFavourite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                "order Now",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Poppins", // Typo fixed
                  color: Color(0xFF964B00), // Hex color code added
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
