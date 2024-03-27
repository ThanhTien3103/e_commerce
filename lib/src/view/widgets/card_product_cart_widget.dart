import 'package:flutter/material.dart';

import '../../models/product.dart';

class CardProductCartWidget extends StatelessWidget {
  const CardProductCartWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            width: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              product.image!,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(product.name!), Text('\$${product.price!} x1')],
            ),
          )
        ],
      ),
    );
  }
}
