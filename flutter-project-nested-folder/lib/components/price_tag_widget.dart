import 'package:flutter/material.dart';

class PriceTagWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Size size;

  const PriceTagWidget({Key key, this.text, this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.035,
      width: size.width * 0.18,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
