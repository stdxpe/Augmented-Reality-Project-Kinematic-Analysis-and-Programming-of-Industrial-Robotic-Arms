import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter_unity_widget_example/utils/screen_utils.dart';

class ARScreen extends StatefulWidget {
  ARScreen({Key key}) : super(key: key);

  @override
  _ARScreenState createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  UnityWidgetController _unityWidgetController;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ScreenArguments arguments =
        ModalRoute.of(context).settings.arguments as ScreenArguments;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('AR Screen'),
      ),
      body: Card(
          margin: const EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              UnityWidget(
                onUnityCreated: _onUnityCreated,
                // isARScene: true,
                isARScene: arguments.enableAR,
                onUnityMessage: onUnityMessage,
                onUnitySceneLoaded: onUnitySceneLoaded,
                fullscreen: true,
              ),
              // Positioned(
              //   bottom: 20,
              //   left: 20,
              //   right: 20,
              //   child: Card(
              //     elevation: 10,
              //     child: Column(
              //       children: <Widget>[
              //         Padding(
              //           padding: const EdgeInsets.only(top: 20),
              //           child: Text("Rotation speed:"),
              //         ),
              //         Slider(
              //           onChanged: (value) {
              //             setState(() {
              //               _sliderValue = value;
              //             });
              //             setRotationSpeed(value.toString());
              //           },
              //           value: _sliderValue,
              //           min: 0,
              //           max: 20,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("AR for Industrial Robotic Arm"),
                      ),
                      // Slider(
                      //   onChanged: (value) {
                      //     setState(() {
                      //       _sliderValue = value;
                      //     });
                      //     setRotationSpeed(value.toString());
                      //   },
                      //   value: _sliderValue,
                      //   min: 0,
                      //   max: 20,
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void setRotationSpeed(String speed) {
    _unityWidgetController.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  void onUnitySceneLoaded(SceneLoaded scene) {
    print('Received scene loaded from unity: ${scene.name}');
    print('Received scene loaded from unity buildIndex: ${scene.buildIndex}');
  }

  // Callback that connects the created controller to the unity controller
  void _onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}
