import 'package:flutter/material.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:niva/utilities/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CustomBanner extends StatefulWidget {
  const CustomBanner({Key? key}) : super(key: key);

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List _bannerImage = [];

  getBanners() async {
    return _firestore
        .collection('banners')
        .get()
        .then((QuerySnapshot querySnapshot) async {
      List images = [];
      for (var doc in querySnapshot.docs) {
        var gsUrl = doc['image'];
        final ref = FirebaseStorage.instance.refFromURL(gsUrl);
        var downloadURL = await ref.getDownloadURL();
        images.add(downloadURL);
      }
      setState(() {
        _bannerImage = images;
      });
    });
  }

  int _current = 0;

  @override
  void initState() {
    getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CarouselSlider(
            items: _bannerImage.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: Dimensions.height20 * 7,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _bannerImage.map((image) {
              int index = _bannerImage.indexOf(image);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? AppColors.mainBrown
                      : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
