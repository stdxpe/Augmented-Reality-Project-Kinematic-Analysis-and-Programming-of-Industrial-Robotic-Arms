import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter_unity_widget_example/utils/screen_utils.dart';

class ApiScreen extends StatefulWidget {
  ApiScreen({Key key}) : super(key: key);

  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  UnityWidgetController _unityWidgetController;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _unityWidgetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String sceneNumber = "2";
    final ScreenArguments arguments =
        ModalRoute.of(context).settings.arguments as ScreenArguments;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          loadExternalScene(sceneNumber);
          sceneNumber = "3";
          bool sonuc = await _unityWidgetController.isReady();
          // print("Bool sonucu : ${_unityWidgetController.isLoaded()}");
          // print("Bool sonucu : ${sonuc}");

          // _unityWidgetController.
        },
      ),
      appBar: AppBar(
        title: Text('API Screen'),
        actions: [
          MaterialButton(
            onPressed: () {
              loadExternalScene("1");
              print("Sahne sonucu : 1");
            },
            color: Colors.red,
          ),
          MaterialButton(
            onPressed: () {
              loadExternalScene("2");
              print("Sahne sonucu : 2");
            },
            color: Colors.green,
          ),
          MaterialButton(
            onPressed: () {
              loadExternalScene("3");
              print("Sahne sonucu : 3");
            },
            color: Colors.yellow,
          ),
        ],
      ),
      body: Card(
        margin: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Expanded(
              child: Container(
                child: UnityWidget(
                  onUnityCreated: onUnityCreated,
                  // isARScene: arguments.enableAR,
                  isARScene: true,
                  onUnityMessage: onUnityMessage,
                  onUnitySceneLoaded: onUnitySceneLoaded,
                  fullscreen: false,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Rotation speed:"),
                    ),
                    Slider(
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                        setRotationSpeed(value.toString());
                      },
                      value: _sliderValue,
                      min: 0,
                      max: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            _unityWidgetController.quit();
                          },
                          child: Text("Quit"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _unityWidgetController.create();
                          },
                          child: Text("Create"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _unityWidgetController.pause();
                          },
                          child: Text("Pause"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _unityWidgetController.resume();
                          },
                          child: Text("Resume"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () async {
                            await _unityWidgetController.openInNativeProcess();
                          },
                          child: Text("Open Native"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _unityWidgetController.unload();
                          },
                          child: Text("Unload"),
                        ),
                        // MaterialButton(
                        //   onPressed: () {
                        //     // _unityWidgetController.quit(silent: true);
                        //     _unityWidgetController.
                        //   },
                        //   child: Text("Silent2 Quit"),
                        // ),
                        MaterialButton(
                          onPressed: () {
                            _unityWidgetController.quit(silent: true);
                          },
                          child: Text("Silent Quit"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
