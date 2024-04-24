import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/components/gradient_text.dart';
import 'package:flutter_unity_widget_example/components/video_background.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => MainScreen(),
            ),
          );
        },
        child: Stack(
          children: [
            VideoBG(),
            Container(),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.blue.withOpacity(0.1)
                  ],
                ),
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientText(
                    'AR',
                    gradient: LinearGradient(
                      colors: [
                        // Colors.white54,
                        Colors.white,
                        Colors.grey[300],
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'moonhouse',
                      fontSize: 100,
                      letterSpacing: 10,
                      fontWeight: FontWeight.w700,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0.0, 0.0),
                            blurRadius: 15.0,
                            // color: Color.fromARGB(255, 0, 0, 0),
                            color: Colors.grey.withOpacity(0.8)),
                        // Shadow(
                        //   offset: Offset(0.0, 0.0),
                        //   blurRadius: 50.0,
                        //   // color: Color.fromARGB(125, 0, 0, 255),
                        //   color: Colors.blueGrey,
                        // ),
                      ],
                    ),
                  ),
                  // Text(
                  //   'AR',
                  //   style: TextStyle(
                  //     // color: Colors.white,
                  //     fontFamily: 'moonhouse',
                  //     fontSize: 100,
                  //     letterSpacing: 10,
                  //     fontWeight: FontWeight.w700,

                  //   ),
                  // ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Augmented Reality',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20.5,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Text(
                    'Industrial Robotic Arms',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
