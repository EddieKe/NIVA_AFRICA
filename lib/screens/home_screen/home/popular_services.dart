import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen/home/service_card.dart'; 
import 'package:niva/models/service.dart';
import 'package:niva/utilities/dimensions2.dart';
import 'package:niva/screens/home_screen/home/text_title.dart';

class PopularServices extends StatelessWidget {
  final List<Service> services;

  const PopularServices({Key? key, required this.services}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: TextTitle(title: "Popular Services", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: services.length,
            itemBuilder: (context, index) {
              Service service = services[index];
              return ServiceCard(
                service: service,
              );
            }),
      ],
    );
  }
}
