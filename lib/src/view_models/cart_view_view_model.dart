
import 'package:get/get.dart';

import '../models/product.dart';

class CartViewViewModel extends GetxController {
  Map<String, List<Product>> listInCart = {
    "Wano Store": [
      Product('Wire Controller', 'something', 187,
          'assets/images/Image_Popular_Product_1.png', []),
      Product('Wire Short', 'something', 287,
          'assets/images/Image_Popular_Product_2.png', [])
    ],
    "Thanh Store": [
      Product('helmet', 'something', 262,
          'assets/images/Image_Popular_Product_3.png', [])
    ]
  }.obs;
  int get totalItems {
    int total = 0;
    listInCart.values.forEach((storeProducts) {
      total += storeProducts.length;
    });
    return total;
  }
  double get totalPrice {
    double totalPrice = 0;
    listInCart.values.forEach((storeProducts) {
      storeProducts.forEach((product) {
        totalPrice += product.price!;
      });
    });
    return totalPrice;
  }
  var canRemove = false.obs;
  void changeState(bool value){
    canRemove.value = value;
  }
}