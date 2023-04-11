import 'package:flutter/material.dart';
import 'package:niva/widgets/big_text.dart';
import 'package:niva/widgets/small_text.dart';
import 'package:niva/widgets/icon_and_text_widget.dart';
import 'package:niva/utilities/dimensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:niva/widgets/app_column.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.1;
  double _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider selection
        Container(
            height: Dimensions.pageView,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                })),

        //dots indicator
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            color: Colors.grey, // Inactive color
            activeColor: const Color(0xFF7C4700),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        //popular text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(
            left: Dimensions.width30,
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            BigText(text: "Popular Services and Products"),
            SizedBox(
              width: Dimensions.width10,
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 3,
              ),
              child: BigText(text: "."),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 2,
              ),
              child: SmallText(text: "Services and Produtcs"),
            )
          ]),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height10,
                ),
                child: Row(
                  children: [
                    //image section
                    Container(
                        height: Dimensions.listViewImgSize,
                        width: Dimensions.listViewImgSize,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white38,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/image1.jpg")))),
                    //text container
                    Expanded(
                      child: Container(
                        height: Dimensions.textContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: AppColumn(
                            text: "Makeup Services",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }
}

Widget _buildPageItem(int index) {
  Matrix4 matrix = new Matrix4.identity();

  return Stack(
    children: [
      Container(
        height: Dimensions.pageViewContainer,
        margin: EdgeInsets.only(right: 10, left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: index.isEven ? Color(0xFF964B00) : Color(0xFF7C4700),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/image1.jpg"))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Dimensions.pageViewTextContainer,
          margin: EdgeInsets.only(right: 30, left: 30, bottom: 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5, 0),
                )
              ]),
          child: Container(
            padding:
                EdgeInsets.only(top: Dimensions.height15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Makeup Brushes"),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                color: Color(0xFF7C4700),
                              )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "4.5"),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "30"),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "Comments")
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: "Active",
                        iconColor: Colors.green),
                    IconAndTextWidget(
                        icon: Icons.location_on,
                        text: "2km",
                        iconColor: Color(0xFF)),
                    IconAndTextWidget(
                        icon: Icons.access_time_rounded,
                        text: "1hr",
                        iconColor: Colors.orange),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
