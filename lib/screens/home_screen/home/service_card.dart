// ServiceCard.dart

import 'package:flutter/material.dart';
import 'package:niva/models/service.dart';
import 'package:niva/screens/details%20screen/details_screen.dart';
import 'package:niva/utilities/constants.dart';
import 'package:niva/utilities/dimensions2.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.service,
  }) : super(key: key);

  final double width, aspectRatio;
  final Service service;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
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
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: nSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: service.id.toString(),
                    child: Image.asset(service.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                service.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${service.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: nPrimaryColor,
                    ),
                  ),
                ],
              )
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
