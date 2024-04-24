import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/models/product.dart';

class CustomizedListTile extends StatelessWidget {
  final Product product;

  const CustomizedListTile({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 16,
      ),
      leading: CircleAvatar(
        // backgroundImage: product.circleAvatarImageUrl,
        backgroundColor: Colors.red,
        radius: 18,
      ),
      title: Text(
        product.productModel,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        product.productCompany,
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
      ),
    );
  }
}
