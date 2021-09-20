import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
    this.size,
  });
}

List<Product> products = [
  Product(id: 1, title: "office code", price: 234, size: 12, description: dummyText, image: "assets/images/image_1.png", color: Color(0xFF3D82AE)), //product
  Product(id: 2, title: "office code", price: 234, size: 8, description: dummyText, image: "assets/images/image_2.png", color: Color(0xFFD3A984)),
  Product(id: 3, title: "office code", price: 234, size: 11, description: dummyText, image: "assets/images/image_3.png", color: Color(0xFF989493)),
  Product(id: 4, title: "office code", price: 234, size: 12, description: dummyText, image: "assets/images/image_4.png", color: Color(0xFFE6B398)),
  Product(id: 5, title: "office code", price: 234, size: 11, description: dummyText, image: "assets/images/image_5.png", color: Color(0xFFFB7883)),
  Product(id: 6, title: "office code", price: 234, size: 12, description: dummyText, image: "assets/images/image_6.png", color: Color(0xFFAEAEAE)),
];

String dummyText = "This company is an manufacturing and selling of hangbags products in premium quality ";
