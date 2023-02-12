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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF6464),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.star_outlined, color: Colors.white,),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: product.color
                              )
                            ),
                            child: Icon(Icons.add_shopping_cart_outlined,color: product.color,),
                          ),
                          Expanded(
                            child: SizedBox(
                              
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: product.color,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))
                                ),
                                onPressed: (){}, 
                                child: Text("Buy Now",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ))
                                ,),
                            ),
                          )
                        ],
                      )
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


class CartCounter extends StatefulWidget{
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox( 
              width: 40,
              height: 32,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
                onPressed: (){
                  setState(() {
                    if (numOfItems>1){
                    numOfItems--;
                    }
                  });
                },
               child: Icon(Icons.remove)),
               
            ),
          ),
          Text(numOfItems.toString(), style: Theme.of(context).textTheme.headlineSmall,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 40,
              height: 32,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                  onPressed: () {
                    setState(() {
                      numOfItems++;
                    });
                  },
                  child: Icon(Icons.add)),
            ),
          ),
        ],
        
      ),
    );
  }
}



