import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter_unity_widget_example/constants.dart';
import 'package:flutter_unity_widget_example/utils/screen_utils.dart';

class ARUnityScreen extends StatefulWidget {
  final int index;
  ARUnityScreen({Key key, this.index}) : super(key: key);

  @override
  _ARUnityScreenState createState() => _ARUnityScreenState();
}

class _ARUnityScreenState extends State<ARUnityScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  UnityWidgetController _unityWidgetController;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
    //TODO: burada dene
  }

  @override
  void dispose() {
    _unityWidgetController.dispose();
    super.dispose();
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // String sceneNumber = "2";
    String sceneNumber = dummyProductList[widget.index].productID;
    final ScreenArguments arguments =
        ModalRoute.of(context).settings.arguments as ScreenArguments;

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     // loadExternalScene(sceneNumber);
      //     loadExternalScene('7');
      //     sceneNumber = "4";
      //     //TODO: burası
      //     // sceneNumber = dummyProductList[widget.index].productID;
      //     bool sonuc = await _unityWidgetController.isReady();
      //     // print("Bool sonucu : ${_unityWidgetController.isLoaded()}");
      //     // print("Bool sonucu : ${sonuc}");

      //     // _unityWidgetController.
      //   },
      // ),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              height: size.height,
              width: size.width,
              child: UnityWidget(
                onUnityCreated: onUnityCreated,
                // isARScene: arguments.enableAR,
                isARScene: true,
                onUnityMessage: onUnityMessage,
                onUnitySceneLoaded: onUnitySceneLoaded,
                fullscreen: true,
              ),
            ),
          ),
          isChecked
              ? Container()
              : Positioned(
                  bottom: 200,
                  left: 70,
                  child: Text(
                    'Seçtiğiniz 3D Model ekrandaki\nMarker üzerinde oluşturulacaktır.',
                    textAlign: TextAlign.center,
                  ),
                ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black,
              height: size.height * 0.07,
              width: size.width,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(15.0),
              //     topRight: Radius.circular(15.0),
              //   ),
              //   color: Colors.black,
              // ),
              child: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isChecked = true;
                      print('Checked!!!');
                      // loadExternalScene(sceneNumber);
                    },
                  );
                },
                child: Center(
                    child: Text(
                  isChecked
                      ? 'AR View for ${dummyProductList[widget.index].productModel}'
                      : 'Anladım',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white70,
                    fontFamily: 'Roboto',
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setRotationSpeed(String speed) {
    _unityWidgetController.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }

  void loadExternalScene(String speed) {
    _unityWidgetController.postMessage(
      'Cube',
      'LoadExternalScene',
      speed,
    );
  }

  // void loadScene(String scene) {
  //   _unityWidgetController.postMessage(
  //     'Cube',
  //     'LoadStaticScene',
  //     scene,
  //   );
  // }

  // void setRotationSpeed2(String idx) {
  //   _unityWidgetController.postMessage(
  //     'Cube',
  //     'LoadExternalScene',
  //     idx,
  //   );
  // }

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  void onUnitySceneLoaded(SceneLoaded scene) {
    print('Received scene loaded from unity: ${scene.name}');
    print('Received scene loaded from unity buildIndex: ${scene.buildIndex}');
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}
