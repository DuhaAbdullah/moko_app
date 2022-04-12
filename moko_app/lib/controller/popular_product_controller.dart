import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moko_app/controller/cart_controller.dart';
import 'package:moko_app/model/product_model.dart';
import 'package:moko_app/utils/color.dart';
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
  // global virable lower priority
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;
  late CartController _cart;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    //var res = jsonDecode(response.body);
    if (response.statusCode == 200) {
      //print('got products');
      _popularProductList = [];
      //return list of objects
      _popularProductList.addAll(Product.fromJson(response.body).products!);
      //print(_popularProductList);
      _isloaded = true;
      update();
    } else {
      //print('Did not get product');
    }
  }

  void setQuantity(bool isIncreament) {
    if (isIncreament) {
      // print("increment " + _quantity.toString());
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
      //print("decrement " + _quantity.toString());
    }
    update();
  }

  // local veriable have a highr priority
  checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar("Item count", "you can reduce more!",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if (quantity > 20) {
      Get.snackbar("Item count", "you can add more!",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    // get from storage _inCartItems
  }

  void addItems(ProductsModel product) {
    if (quantity > 0) {
      _cart.addItems(product, _quantity);
      _cart.items.forEach((key, value) {
        print("this id is:"+value.id.toString()
        + "the quantity is:"+value.quantity.toString());
      });
    } else {
      Get.snackbar("Item count", "you should add an item!",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
    }
  }
}
