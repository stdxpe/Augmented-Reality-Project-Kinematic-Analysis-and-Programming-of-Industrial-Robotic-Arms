import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/components/price_tag_widget.dart';
import 'package:flutter_unity_widget_example/constants.dart';
import 'package:flutter_unity_widget_example/models/product.dart';
import 'customized_description_text_widget.dart';
import 'customized_listtile_widget.dart';

class ListElement extends StatelessWidget {
  final Product product;
  final Size size;
  ListElement({Key key, this.product, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: Colors.red.withOpacity(0.3),
              height: size.height * 0.25,
              width: size.width,
              child: Image.asset(
                // 'assets/images/1.jpg',
                // 'assets/images/robots/abb_irb_120/cover.png',
                product.imageUrl,
                fit: BoxFit.cover,
                alignment: Alignment(0, -1),
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    PriceTagWidget(
                      size: size,
                      text: product.price,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    PriceTagWidget(
                      size: size,
                      text: product.weightCapacity,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        CustomizedListTile(
          product: product,
        ),
        CustomizedDescriptionText(
          product: product,
        ),
      ],
    );
  }
}
