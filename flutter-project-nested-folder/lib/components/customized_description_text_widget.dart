import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/models/product.dart';

class CustomizedDescriptionText extends StatelessWidget {
  final Product product;
  const CustomizedDescriptionText({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Text(
        product.productDescription,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 10.5,
          wordSpacing: 0.5,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
