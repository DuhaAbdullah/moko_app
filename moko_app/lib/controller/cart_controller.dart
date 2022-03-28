import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:moko_app/data/repository/cart_repo.dart';
import 'package:moko_app/model/product_model.dart';

import '../model/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> items = {};

  void addItems(ProductsModel product, int quantity){
    items.putIfAbsent(product.id, () => CartModel);
  }
}
