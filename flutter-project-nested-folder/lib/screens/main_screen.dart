import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/components/customized_appbar_widget.dart';
import 'package:flutter_unity_widget_example/components/list_element_widget.dart';
import 'package:flutter_unity_widget_example/constants.dart';
import 'package:flutter_unity_widget_example/screens/details_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomizedAppBar(
        appBarText: 'Home',
        useIcon: true,
        appBarIconUrl: 'assets/icons/loupe-icon.svg',
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: dummyProductList.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => DetailsScreen(
                    productIndex: index,
                  ),
                ),
              );
            },
            child: Padding(
              // padding: EdgeInsets.only(top: size.height * 0.04),
              padding: EdgeInsets.symmetric(vertical: size.height * 0.017),
              // padding: EdgeInsets.only(top: 40.0, bottom: 0),
              // padding: EdgeInsets.only(bottom: 0),
              child: ListElement(
                size: size,
                product: dummyProductList[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
