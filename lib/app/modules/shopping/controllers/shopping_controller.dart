import 'package:get/get.dart';
import 'package:getx_state_managment_tutorial/app/data/models/product.dart';

class ShoppingController extends GetxController {
  //TODO: Implement ShoppingController

  RxList products = <Product>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    Future.delayed(Duration(seconds: 1));
    final productResult = [
      Product(
        id: 1,
        productName: 'Hamburguesa Sencilla',
        productImage: 'abd',
        productDescription: 'Doble queso y Bacon',
        price: 8.00,
      ),
      Product(
        id: 2,
        productName: 'Hamburguesa Doble',
        productImage: 'abe',
        productDescription: 'Doble queso y Bacon',
        price: 10.00,
      ),
      Product(
        id: 3,
        productName: 'Hamburguesa Triple',
        productImage: 'abf',
        productDescription: 'Doble queso y Bacon',
        price: 12.00,
      ),      
    ];
    products.value = productResult;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
