import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_state_managment_tutorial/app/modules/cart/controllers/cart_controller.dart';

import '../controllers/shopping_controller.dart';

class ShoppingView extends StatelessWidget {
  final ShoppingController shoppingContr0oller = Get.put(ShoppingController());
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (_, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controller.products[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                          '${controller.products[index].productDescription}'),
                                    ],
                                  ),
                                  Text('\$${controller.products[index].price}',
                                      style: TextStyle(fontSize: 24)),
                                ],
                              ),

                              TextButton(
                                onPressed: () {
                                  cartController.addToCart(
                                      controller.products[index]);
                                },
                                child: Text(
                                  'Add to Cart',
                                ),
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              // Obx(() => IconButton(
                              //       icon: _
                              //               .products[index].isFavorite.value
                              //           ? Icon(Icons.check_box_rounded)
                              //           : Icon(Icons
                              //               .check_box_outline_blank_outlined),
                              //       onPressed: () {
                              //         _.products[index].isFavorite
                              //             .toggle();
                              //       },
                              //     ),
                              //     ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            GetX<CartController>(
              builder: (controller) {
                return Text(
                  'Total Amount: \$ ${controller.totalPrice}',
                  style: TextStyle(fontSize: 32.0, color: Colors.white),
                );
              },
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        label: GetX<CartController>(
          builder: (controller) {
            return Text(controller.counter.toString(), style: TextStyle(fontSize: 24.0, color: Colors.black,),);
          },
        ),
        icon: Icon(Icons.add_shopping_cart, color: Colors.black),
        onPressed: () {},
      ),
    );
  }
}
