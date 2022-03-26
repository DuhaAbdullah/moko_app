import 'package:get/get.dart';
import 'package:moko_app/model/product_model.dart';

import '../data/repository/recommended_product_repo.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({
    required this.recommendedProductRepo,
  });

  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isloaded = false;
  bool get isLoaded => _isloaded;
  int _quantity = 0;
  int get quantity => _quantity;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();

    if (response.statusCode == 200) {
      print('got products recommended');
      _recommendedProductList = [];
      //return list of objects
      _recommendedProductList.addAll(Product.fromJson(response.body).products!);
      print(_recommendedProductList);
      _isloaded = true;
      update();
    } else {
      print('Did not get product recommended');
    }
  }

  void setQuantity(bool isIncreament) {
    if (isIncreament) {
      print("increment "+_quantity.toString());
      _quantity = _quantity + 1;
    } else {
      _quantity = _quantity - 1;
    }
  }
}
