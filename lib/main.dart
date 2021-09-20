import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/home_screen.dart';
import 'package:shoppingapp/screens/components/body.dart';
import 'package:shoppingapp/model/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), //theme
      home: HomeScreen(),
    ); //materialapp
  }
}
