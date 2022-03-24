import 'package:get/get.dart';
import 'package:moko_app/model/product_model.dart';
import '../data/repository/populat_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({
    required this.popularProductRepo,
  });

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    //var res = jsonDecode(response.body);
    if (response.statusCode == 200) {
      print('got products');
      _popularProductList = [];
      //return list of objects
      _popularProductList.addAll(Product.fromJson(response.body).products!);
      print(_popularProductList);
      _isloaded = true;
      update();
    } else {
      print('Did not get product');
    }
  }
}
