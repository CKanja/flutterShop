import 'package:flutter/material.dart';
import 'productList.dart';

void main () => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.blueGrey,
  ),
  home: MyApp(),
)
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: const Icon(Icons.arrow_back_sharp),
        leading: const BackButton(color: Colors.blueGrey,),
        actions: <Widget>[IconButton(
          onPressed: () {}, 
          icon: const Icon(
            Icons.search,color: Colors.blueGrey,)),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.blueGrey,
              )),
        ],
      ),
      body: product(),
    );
  }

}
