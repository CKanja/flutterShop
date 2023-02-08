import 'package:flutter/material.dart';
import 'package:flutter_shop/body.dart';
import 'package:flutter_shop/database/stock.dart';

class ProductDetails extends StatelessWidget{
  final Product product;

const ProductDetails({super.key, required this.product});
 // const ProductDetails({required Key key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // leading: const Icon(Icons.arrow_back_sharp),
      leading: BackButton(
        color: Colors.blueGrey,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.search,
              color: Colors.blueGrey,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.blueGrey,
            )
            ),
            SizedBox( width: 10)

      ],
    );
  }


}