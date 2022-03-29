import 'package:get/get.dart';
import 'package:moko_app/data/repository/cart_repo.dart';
import 'package:moko_app/model/product_model.dart';

import '../model/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  final Map<int, CartModel> _items = {};

  void addItems(ProductsModel product, int quantity) {
    // ignore: avoid_print
    print('lenight of the items' + _items.length.toString());

    _items.putIfAbsent(product.id!, () {
      print("adding item  to the cart id:"+ product.id!.toString() + "quanitiy is:"+ quantity.toString());
      return CartModel(
          id: product.id,
          name: product.name,
          price: product.price,
          img: product.img,
          quantity: quantity,
          isExist: true,
          time: DateTime.now().toString());
    });
  }
}
