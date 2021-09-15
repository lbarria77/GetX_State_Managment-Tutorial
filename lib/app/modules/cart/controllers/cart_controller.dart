import 'package:get/get.dart';
import 'package:getx_state_managment_tutorial/app/data/models/product.dart';

class CartController extends GetxController {
  //TODO: Implement CartController

  RxList cartItems = <Product>[].obs;
  int get counter => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }

  removeToCart(int index) {
    cartItems.removeAt(index);
  }



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
