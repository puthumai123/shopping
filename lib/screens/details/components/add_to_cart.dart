import 'package:flutter/material.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/model/product.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ), //border.all
            ), //boxdecoration
            child: IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: product.color,
              ), //icon
              onPressed: () {},
            ), //iconbutton
          ), //container
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), //roundedrectangleborder
                color: product.color,
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ), //textstyle
                ), //text
              ), //flatbutton
            ), //sizedbox
          ), //expanded
        ], //widget
      ), //row
    ); //padding
  }
}
