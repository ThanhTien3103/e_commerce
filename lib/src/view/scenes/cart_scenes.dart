import 'package:e_commerce/src/view/widgets/button_orange_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../widgets/card_product_cart_widget.dart';

class CartScenes extends StatelessWidget {
  CartScenes({super.key});

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
  };

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
              '4 items',
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
                                ''
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
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total: ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '\$337.15',
                        style: TextStyle(
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
        itemCount: listInCart.length,
        itemBuilder: (BuildContext context, int index) {
          List<String> keys = listInCart.keys.toList();
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
                  itemCount: listInCart[keys[index]]?.length,
                  itemBuilder: (BuildContext context, int inx) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: CardProductCartWidget(
                          product: listInCart[keys[index]]![inx]),
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
