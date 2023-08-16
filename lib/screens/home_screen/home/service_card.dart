// ServiceCard.dart

import 'package:flutter/material.dart';
import 'package:niva/models/service.dart';
import 'package:niva/screens/details%20screen/details_screen.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/utilities/dimensions2.dart';

class ServiceCard extends StatelessWidget {
  final double width;
  final Service service;

  const ServiceCard({
    Key? key,
    this.width = 160, // Increased the default width
    required this.service,
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
            arguments: ServiceDetailsArguments(service: service),
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
                      image: AssetImage(service.images[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Hero(
                    tag: service.id.toString(),
                    child: Container(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                service.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Text(
                // Service description added here
                service.description,
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
                    "\Ksh${service.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: nPrimaryColor,
                    ),
                  ),
                ],
              ),
              const Text(
                "order Now",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Poppins",
                  color: Color(0xFF964B00),
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

class ServiceDetailsArguments {
  final Service service;

  ServiceDetailsArguments({required this.service});
}
