import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/utilities/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: use_key_in_widget_constructors
class CustomBanner extends StatefulWidget {
  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List _bannerImage = [];

  getBanners() {
    return _firestore
        .collection('banners')
        .get()
        .then((QuerySnapshot querySnapshot) {
      // ignore: avoid_function_literals_in_foreach_calls
      querySnapshot.docs.forEach((doc) {
        setState(() {
          _bannerImage.add(doc['image']);
        });
      });
    });
  }

  @override
  void initState() {
    getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: Dimensions.height20 * 7,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.mainBrown,
          borderRadius: BorderRadius.circular(10),
        ),
        child: PageView.builder(
            itemCount: _bannerImage.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  _bannerImage[index],
                  fit: BoxFit.cover,
                ),
              );
            }),
      ),
    );
  }
}
