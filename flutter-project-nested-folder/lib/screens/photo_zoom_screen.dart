import 'package:flutter/material.dart';

class PhotoZoomScreen extends StatelessWidget {
  final String imageUrl;
  final Size size;
  final int productIndex;
  final int index;

  PhotoZoomScreen(
      {Key key,
      @required this.imageUrl,
      this.size,
      this.productIndex,
      this.index})
      : super(key: key);

  final TransformationController controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.black.withOpacity(0.9),
            ),
          ),
          Center(
            child: Container(
              // height: size.height * 0.35,
              width: size.width,

              child: InteractiveViewer(
                // panEnabled: false,
                transformationController: controller,
                onInteractionEnd: (ScaleEndDetails endDetails) {
                  controller.value = Matrix4.identity();
                },
                child: Hero(
                  tag: imageUrl,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    alignment: Alignment(-1, -1),
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
