import 'package:flutter/material.dart';
import 'package:shoppingapp/model/product.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/screens/details/components/body_1.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body_one(product: product),
    ); //scaffold
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ), //icon arrow
        onPressed: () => Navigator.pop(context),
      ), //iconbutton
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () {}), //iconbutton
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}), //iconbutton
        SizedBox(width: kDefaultPadding / 2),
      ], //widget
    ); //appbar
  }
}
