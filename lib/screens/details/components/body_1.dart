import 'package:flutter/material.dart';
import 'package:shoppingapp/model/product.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/screens/details/components/add_to_cart.dart';
import 'package:shoppingapp/screens/details/components/color_and_size.dart';
import 'package:shoppingapp/screens/details/components/description.dart';
import 'package:shoppingapp/screens/details/components/product_title_with_image.dart';
import 'package:shoppingapp/screens/details/components/counter_with_fav_btn.dart';

class Body_one extends StatelessWidget {
  final Product product;

  const Body_one({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: size.height * 12, left: kDefaultPadding, right: kDefaultPadding), //edgeinsets
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white, //boxdecoration
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ), //boxdecoration
                  ), //borderradius
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product), //colorand size
                      SizedBox(height: kDefaultPadding / 2), //sizedbox
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2), //sizedbox
                      CounterWithFavBtn(), //counterwithfavbtn
                      SizedBox(height: kDefaultPadding / 2), //sizedbox
                      AddToCart(product: product), //addtocart
                    ], //widget
                  ), //column
                ), //container
                ProductTitleWithImage(product: product),
              ], //widget
            ), //stack
          ), //sizedbox
        ], //widget
      ), //column
    ); //singlechildscrollview
  }
}
