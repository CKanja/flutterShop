import 'package:flutter/material.dart';
import 'package:flutter_shop/database/stock.dart';


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
              children: [
                Text("HI"),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 800,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


}