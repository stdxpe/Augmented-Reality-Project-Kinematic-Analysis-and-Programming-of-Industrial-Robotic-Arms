import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/components/customized_appbar_widget.dart';
import 'package:flutter_unity_widget_example/components/customized_description_text_widget.dart';
import 'package:flutter_unity_widget_example/components/customized_listtile_widget.dart';
import 'package:flutter_unity_widget_example/components/price_tag_widget.dart';
import 'package:flutter_unity_widget_example/constants.dart';
import 'package:flutter_unity_widget_example/screens/ar_unity_screen.dart';

import 'photo_zoom_screen.dart';

class DetailsScreen extends StatelessWidget {
  final int productIndex;

  const DetailsScreen({Key key, this.productIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomizedAppBar(
        appBarText: 'Product',
        useIcon: false,
        // appBarIconUrl: 'assets/icons/arrow-right-1-icon.svg',
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              CustomizedListTile(
                product: dummyProductList[productIndex],
              ),
              Positioned(
                right: size.width * 0.03,
                top: size.width * 0.05,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      PriceTagWidget(
                        color: Colors.red,
                        text: dummyProductList[productIndex].price,
                        size: size,
                      ),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      PriceTagWidget(
                        color: Colors.blue,
                        text: dummyProductList[productIndex].weightCapacity,
                        size: size,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: size.width,
            height: size.height * 0.33,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: dummyProductList[productIndex].imageDetailsList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PhotoZoomScreen(
                          imageUrl: dummyProductList[productIndex]
                              .imageDetailsList[index],
                          index: index,
                          productIndex: productIndex,
                          size: size,
                        ),
                        opaque: false,
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      // height: size.height * 0.35,
                      width: size.width * 0.55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: dummyProductList[productIndex]
                            .imageDetailsList[index],
                        child: Image.asset(
                          dummyProductList[productIndex]
                              .imageDetailsList[index],
                          fit: BoxFit.cover,
                          alignment: Alignment(-1, -1),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: CustomizedDescriptionText(
              product: dummyProductList[productIndex],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => PhotoZoomScreen(
                      imageUrl:
                          dummyProductList[productIndex].productSpecsImageUrl,
                      productIndex: productIndex,
                      size: size,
                    ),
                    opaque: false,
                  ),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.18,
                    width: size.width,
                    decoration: BoxDecoration(
                      // color: Colors.red.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      dummyProductList[productIndex].productSpecsImageUrl,
                      fit: BoxFit.fill,
                      // color: Colors.red.withOpacity(0.3),
                      // alignment: Alignment(-1, -1),
                    ),
                  ),
                  Container(
                    height: size.height * 0.18,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => ARUnityScreen(
                      index: productIndex,
                    ),
                  ),
                );
              },
              child: Container(
                height: size.height * 0.1,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'View AR',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
