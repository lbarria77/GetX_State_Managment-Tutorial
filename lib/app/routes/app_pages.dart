import 'package:get/get.dart';

import 'package:getx_state_managment_tutorial/app/modules/cart/bindings/cart_binding.dart';
import 'package:getx_state_managment_tutorial/app/modules/cart/views/cart_view.dart';
import 'package:getx_state_managment_tutorial/app/modules/home/bindings/home_binding.dart';
import 'package:getx_state_managment_tutorial/app/modules/home/views/home_view.dart';
import 'package:getx_state_managment_tutorial/app/modules/shopping/bindings/shopping_binding.dart';
import 'package:getx_state_managment_tutorial/app/modules/shopping/views/shopping_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SHOPPING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING,
      page: () => ShoppingView(),
      binding: ShoppingBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
  ];
}
