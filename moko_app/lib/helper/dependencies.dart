import 'package:get/get.dart';
import 'package:moko_app/data/api/api_client.dart';
import 'package:moko_app/utils/app_constants.dart';

import '../controller/popular_product_controller.dart';
import '../controller/recommended_product_controller.dart';
import '../data/repository/populat_product_repo.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.baseUrl));
  //repository
  Get.lazyPut(() => PopularProductRepo( apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo( apiClient: Get.find()));
  //controller
  Get.lazyPut(() => RecommendedProductController( recommendedProductRepo: Get.find()));
  Get.lazyPut(() => PopularProductController( popularProductRepo: Get.find()));

}
