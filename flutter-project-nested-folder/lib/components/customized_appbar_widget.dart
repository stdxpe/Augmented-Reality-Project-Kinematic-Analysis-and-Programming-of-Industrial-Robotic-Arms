import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomizedAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarText;
  final String appBarIconUrl;
  final bool useIcon;

  const CustomizedAppBar(
      {Key key, this.appBarText, this.appBarIconUrl, this.useIcon})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      automaticallyImplyLeading: false,
      toolbarHeight: 120,
      titleSpacing: 20,
      excludeHeaderSemantics: true,
      title: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            appBarText,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ],
      ),
      actions: [
        useIcon
            ? Container(
                height: 45,
                width: 45,
                padding: EdgeInsets.only(top: 60, right: 20),
                child: SvgPicture.asset(
                  appBarIconUrl,
                  color: Colors.black,
                ),
              )
            : Container(),
      ],
    );
  }
}
