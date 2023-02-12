// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_shop/database/stock.dart';
import './product_title_image.dart';
import './color_and_size_details.dart';
import './product_desc_details.dart';

class Body extends StatelessWidget{
  final Product product;

  const Body({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                 
                  margin: EdgeInsets.only(top: size.height * 0.34),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20,
                    right: 20,
                  ),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                    ),
                    
                  ),
                  child: Column(
                    children: [
                      Colour_and_Size(product: product),
                      product_desc_details(product: product),
                      
                    ],
                  ),
                ),
                ProductTitleWithWidget(product: product),
                
                //Image.asset(product.image)
              ],
            ),
          )
        ],
      ),
    );
  }


}



