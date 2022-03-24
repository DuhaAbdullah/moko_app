import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  //683/220 = 3.1
  static double pageView = screenHeight / 2.13;
  static double pageViewContainer = screenHeight / 3.1;
  //683/120 = 5.6
  static double pageViewTextContainer = screenHeight / 5.69;
  //heights for padding and margin
  //683/10 = 683/20 = 683/15
  static double height5 = screenHeight / 136.6;
  static double height10 = screenHeight / 68.3;
  static double height15 = screenHeight / 45.5;
  static double height20 = screenHeight / 34.15;
  static double height30 = screenHeight / 22.7;
  static double height45 = screenHeight / 15.1;
  //width for padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;
  //font size
  static double font20 = screenHeight / 34.15;
  static double font26 = screenHeight / 26.2;
  static double font16 = screenHeight / 42.68;
  //radius
  static double radius15 = screenHeight / 45.5;
  static double radius20 = screenHeight / 34.15;
  static double radius30 = screenHeight / 22.7;
  //icon size
  static double iconSize24 = screenHeight / 28.4;
  static double iconSize16 = screenHeight / 42.68;
  //list view size 411/120
  static double listViewImgSize = screenWidth / 3.4;
  //411/200
  static double listViewTextContSize = screenWidth / 2.0;

  //popylar coffees
  static double popularCoffeeImgSize = screenHeight / 2.27;
  //buttom height
  static double buttomHeightBar = screenHeight / 5.69;
  //navigation container 683/100
  static double navigationContainer = screenHeight / 6.83;
}
