import 'package:e_commerce/src/view/widgets/button_orange_widget.dart';
import 'package:e_commerce/src/view_models/cart_view_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/product.dart';
import '../widgets/card_product_cart_widget.dart';

class CartScenes extends StatelessWidget {
  CartScenes({super.key});

  var controller = Get.find<CartViewViewModel>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              'Your Cart',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
            ),
            Text(
              '${controller.totalItems} items',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: const Icon(Icons.shop),
                  ),
                  Expanded(
                      child: CupertinoButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Add voucher code ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ))),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total: ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '${controller.totalPrice}\$',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                  ButtonOrange(title: "Check Out", onPress: () {})
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: controller.listInCart.length,
        itemBuilder: (BuildContext context, int index) {
          List<String> keys = controller.listInCart.keys.toList();
          return Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  keys[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.listInCart[keys[index]]?.length,
                  itemBuilder: (BuildContext context, int inx) {
                    return Stack(
                      children: [
                        GestureDetector(
                          onHorizontalDragUpdate: (details) {
                            if (details.delta.dx < 0) {
                              controller.changeState(true);
                            } else if (details.delta.dx > 0) {
                              controller.changeState(false);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: CardProductCartWidget(
                                product: controller.listInCart[keys[index]]![inx]),
                          ),
                        ),
                        Obx(
                          () => Positioned(
                            bottom: 10,
                            right: 0,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: controller.canRemove.value ? 60 : 0,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
