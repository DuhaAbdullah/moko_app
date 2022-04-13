import 'package:get/get.dart';
import 'package:moko_app/data/repository/cart_repo.dart';
import 'package:moko_app/model/product_model.dart';

import '../model/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  final Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItems(ProductsModel product, int quantity) {
    // ignore: avoid_print
    print('lenight of the items' + _items.length.toString());

    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {
        return CartModel(
            id: value.id,
            name: value.name,
            price: value.price,
            img: value.img,
            quantity: value.quantity! + quantity,
            isExist: true,
            time: DateTime.now().toString());
      });
    } else {
      _items.putIfAbsent(product.id!, () {
        print("adding item  to the cart id:" +
            product.id!.toString() +
            "quanitiy is:" +
            quantity.toString());
        //if u have map u can look at it like this and also print the value
        _items.forEach((key, value) {
          print("quantity is " + value.quantity.toString());
        });
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

  bool exsitsInCart(ProductsModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductsModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}
