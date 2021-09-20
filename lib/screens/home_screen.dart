import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: () {}), //iconbutton
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () {}), //iconbutton
        IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black), onPressed: () {}), //iconbutton
      ], //<widget>
    ); //appBar
  }
}
