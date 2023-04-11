import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.64;

  static double height20 = screenHeight / 42.2;
  static double height10 = screenHeight / 84.4;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  static double height15 = screenHeight / 56.27;

  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  static double width30 = screenWidth / 28.13;
  static double width10 = screenWidth / 84.4;
  static double width20 = screenWidth / 42.2;

  //list view
  static double listViewImgSize = screenWidth / 3.25;
  static double textContSize = screenWidth / 3.9;

  //popular services
  static double popularSerImagSize = screenHeight / 2.41;

  //icon size
  static double iconSize16 = screenHeight / 52.75;

  //font size
  static double font26 = screenHeight / 32.46;
  static double font20 = screenHeight / 42.2;
  static double font16 = screenHeight / 42.2;

  //bottom bar height
  static double bottomHeightBar = screenHeight / 7.03;
}
