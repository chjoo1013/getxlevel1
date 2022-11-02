import 'package:get/get.dart';
import 'package:getxlevel1/model/product.dart';

class CartController extends GetxController {
  var cartItems = <Produck>[].obs;

  double get totalPrice => cartItems.fold(0, (e, item) => e + item.price);
  int get count => cartItems.length;

  void addToItem(Produck produck) {
    cartItems.add(produck);
  }
}
