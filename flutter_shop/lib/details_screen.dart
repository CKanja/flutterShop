import 'package:flutter/material.dart';
//import 'package:flutter_shop/body.dart';
import 'package:flutter_shop/database/stock.dart';
import './detail_body.dart';

class ProductDetails extends StatelessWidget{
  final Product product;

const ProductDetails({super.key, required this.product});
 // const ProductDetails({required Key key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      // leading: const Icon(Icons.arrow_back_sharp),
      leading: BackButton(
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            )
            ),
            SizedBox( width: 10)

      ],
    );
  }


}