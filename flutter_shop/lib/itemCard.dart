import 'package:flutter/material.dart';

import 'database/stock.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  // final Product? product;
  // final Function? press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product!.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              product!.title,
              style: TextStyle(fontFamily: 'DM'),
            ),
          ),
          Text(
            "\$${product?.price}",
            style: TextStyle(fontFamily: 'DM', fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
