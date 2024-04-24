import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/screens/main_screen.dart';
import 'package:flutter_unity_widget_example/screens/orientation_screen.dart';

import 'menu_screen.dart';
import 'screens/api_screen.dart';
import 'screens/ar_screen.dart';
import 'screens/loader_screen.dart';
import 'screens/simple_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yasin Bilgin AR Proje',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Stolzl',
      ),
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashScreen(),
        'main': (context) => MainScreen(),
        '/': (context) => MenuScreen(),
        '/simple': (context) => SimpleScreen(),
        '/loader': (context) => LoaderScreen(),
        '/orientation': (context) => OrientationScreen(),
        '/api': (context) => ApiScreen(),
        '/activity': (context) => ARScreen(),
      },
    );
  }
}
