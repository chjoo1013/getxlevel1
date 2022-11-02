import 'package:get/get.dart';
import 'package:getxlevel1/model/product.dart';

class ShoppingController extends GetxController {
  var products = <Produck>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    var productData = [
      Produck(
        id: 1,
        price: 30,
        produckDescription: 'some description about product',
        produckName: 'Mouse',
      ),
      Produck(
        id: 2,
        price: 40,
        produckDescription: 'some description about product',
        produckName: 'Keyboard',
      ),
      Produck(
        id: 3,
        price: 620,
        produckDescription: 'some description about product',
        produckName: 'Monitor',
      ),
      Produck(
        id: 4,
        price: 80,
        produckDescription: 'some description about product',
        produckName: 'Ram',
      ),
      Produck(
        id: 5,
        price: 120.5,
        produckDescription: 'some description about product',
        produckName: 'Speaker',
      ),
    ];

    products.assignAll(productData);
  }
}
