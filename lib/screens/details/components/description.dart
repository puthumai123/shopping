import 'package:flutter/material.dart';
import 'package:shoppingapp/model/product.dart';
import 'package:shoppingapp/constants.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    ); //padding
  }
}
