import 'package:flutter/material.dart';

import 'database/stock.dart';


class product_desc_details extends StatelessWidget {
  const product_desc_details({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(product.description, style: TextStyle(height: 1.5),),
    );
  }
}