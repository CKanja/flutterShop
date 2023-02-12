import 'package:flutter/material.dart';

import 'database/stock.dart';

class Colour_and_Size extends StatelessWidget {
  const Colour_and_Size({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Color"),
            // ignore: sized_box_for_whitespace
            Row(
              children: [
                ColorDot(color: Color(0xFF356C95), isSelected: true,),
                ColorDot(color: Color(0xFFF8C078)),
                ColorDot(color: Color(0xFFA29B9B)),
              ]
            ),
            
            ],
        ),
      ),
      Expanded(
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
          children: [
            TextSpan( text: "Size\n"),
            TextSpan(
              text: "${product.size} cm",
              style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)
            )
          ]
        )),
      )
    ],);
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key, required this.color, this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(
        top: 5,
        right: 20,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color: Colors.transparent,
        )
      ),
      child: DecoratedBox(decoration: 
      BoxDecoration(color: color,
      shape: BoxShape.circle)),
    );
  }
}

