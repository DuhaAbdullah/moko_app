import 'package:get/get.dart';
import 'package:moko_app/screens/coffee/popular_coffee_detail.dart';
import 'package:moko_app/screens/coffee/recommended_coffee_detail.dart';

import '../screens/home/main_coffee_page.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularCoffee = '/popular_coffee';
  static const String recommendedCoffee = '/recommended_coffee';
  //if u want to add a variable in user id use a dollar sign like page Id here
  static String getPopularCoffee(int pageId) =>
      '$popularCoffee?pageId=$pageId';
  static String getInitial() => initial;
  static String getRecommendedCoffee(int index) => recommendedCoffee;
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => const MainCoffeePage()),
    GetPage(
      name: popularCoffee,
      page: () {
        var pageId = Get.parameters['pageId'];
        return PopularCoffeeDetail(pageId: int.parse(pageId!));
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedCoffee,
      page: () {
        var pageId = Get.parameters['pageId'];
        return RecommendedCoffeeDetail(pageId: int.parse(pageId!));
      },
      transition: Transition.fadeIn,
    ),
  ];
}
