import 'package:flutter/material.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/model/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  const ProductTitleWithImage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristrocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ), //text
          Text(
            product.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ), //text
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ], //widget
                ), //textspan
              ), //rich text
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ), //image.asset
              ), //expanded
            ], //widget
          ), //row
        ], //widget
      ), //column
    ); //padding
  }
}
