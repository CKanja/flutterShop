// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shop/database/stock.dart';
import 'package:flutter_shop/details_screen.dart';

import 'itemCard.dart';

class product extends StatelessWidget{
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 0, 10),
              child: Text("Women", style: TextStyle(
                fontFamily: 'DM', fontSize: 20, fontWeight: FontWeight.w600),),
            ),
            Categories(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: 
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.7,), 
                    itemBuilder: (context, index) => ItemCard(product: products[index], press: () => Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => ProductDetails(product: products[index],
                    ),
                    )),
                    )
            ),
              ),
            ),
    ],
    );
  }

}

// class ItemCard extends StatelessWidget {
//   final Product product;
//   final Function press;
//   // final Product? product;
//   // final Function? press;
//   const ItemCard({
//     Key? key, 
//     required this.product, 
//     required this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(20),
//               // height: 180,
//               // width: 160,
//               decoration: BoxDecoration(
//                 color: product.color,
//                 borderRadius: BorderRadius.circular(16)
//               ),
//               child: Image.asset(product!.image),
//             ),
//           ),
//           Padding(
//         padding: const EdgeInsets.symmetric(vertical: 5),
//         child: Text(
//           product!.title,
//           style: TextStyle(fontFamily: 'DM'),
//         ),
//       ),
//       Text(
//         "\$${product?.price}",
//         style: TextStyle(fontFamily: 'DM', fontWeight: FontWeight.bold),
//       )
//         ],
//       ),
//     );
//   }
// }


// stateful widget for the categories

// ignore: use_key_in_widget_constructors
class Categories extends StatefulWidget{
  @override
  // ignore: library_private_types_in_public_api
  _CategoriesState createState() => _CategoriesState();

}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewellery", "Footwear", "Dresses","Workout","T-shirts"];
  // Will automatically be set as 0
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index) => buildCategory(index),
      ),
    );
  }


// Method to define
Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          selectedIndex = index;
        });
      }),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
              fontFamily: 'DM',
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ? Colors.amber[500] : Colors.blueGrey,
            ),
          ),
          Container(
            height: 2,
            width: 30,
            color: selectedIndex == index ? Colors.amber[500] : Colors.blueGrey,
          )
        ],
      ),),
    );
}

}


// return Column(
//       children: const [Padding(
//         padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
//         child: Text('Women',
//                 style: TextStyle(fontFamily: 'DM', fontSize: 20, fontWeight: FontWeight.w600),
//         ),
//       )],
//     );



// Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 5),
            //   child: Text(products[0].title, style: TextStyle(fontFamily: 'DM'),),
            // ),
            // Text("\$234", style: TextStyle(fontFamily: 'DM',fontWeight: FontWeight.bold),)