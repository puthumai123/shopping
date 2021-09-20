import 'package:flutter/material.dart';
import 'package:shoppingapp/model/product.dart';
import 'package:shoppingapp/constants.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"), //text
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ), //colordot
                  ColorDot(color: Color(0xFF356C95)), //colordot
                  ColorDot(color: Color(0xFF356C95)), //colordot
                ], //widget
              ), //row
            ], //widget
          ),
        ), //column
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(
                  text: "size\n",
                ), //textsapn
                TextSpan(
                  text: "${product.size} cm",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), //textspan
              ], //widget
            ), //textspan
          ),
        ), //richtext
      ], //widget
    ); //row
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ), //border.all
      ), //boxdecoration
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ), //boxdecoration
      ), //decoratedbox
    ); //container
  }
}
