import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moko_app/controller/popular_product_controller.dart';
import 'package:moko_app/controller/recommended_product_controller.dart';
import 'package:moko_app/routes/routes_helper.dart';
import 'package:moko_app/screens/home/main_coffee_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cofee shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainCoffeePage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
