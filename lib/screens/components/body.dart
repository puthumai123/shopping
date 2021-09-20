import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/components/categories.dart';
import 'package:shoppingapp/model/product.dart';
import 'package:shoppingapp/screens/components/item_card.dart';
import 'package:shoppingapp/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Women",
            style: TextStyle(fontWeight: FontWeight.bold),
          ), //text
        ), //padding
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ), //silvergrid
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ), //detailscreen
                          )), //materialpageroute
                    )), //item card//gridview
          ), //padding
        ), //expanded
      ], //widget
    ); //column
  }
}
