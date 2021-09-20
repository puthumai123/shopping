import 'package:flutter/material.dart';
import 'package:shoppingapp/model/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              //height: 180,
              //width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ), //boxdecoration
              child: Hero(tag: "${product.id}", child: Image.asset(product.image)), //image
            ),
          ), //container
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              product.title,
              style: TextStyle(color: Colors.black26),
            ), //text
          ), //padding
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ), //text//1
        ], //widget
      ),
    ); //column
  }
}
