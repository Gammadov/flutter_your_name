import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les68_recent_calls/recent_calls_screen.dart';
import 'package:flutter_your_name/screens/les69_navigator/named_navigator.dart';
import 'package:flutter_your_name/screens/les73/les73.dart';
import 'package:flutter_your_name/screens/les73/les73_gesture_detector%20.dart';
import 'package:flutter_your_name/screens/les74_inkwell/les74_inkwell.dart';
import 'package:flutter_your_name/screens/les75_box_decoration/les75_box_decoration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const Scaffold(
      //   body: SecondScreen(),
      // ),
      // подключаем свои виджеты к home
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const RecentCalls(),

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),

        '/lamp': (context) => const Lamp(),
        '/GestureDetector': (context) => const myGestureDetector(),
        '/InkWell': (context) => const myInkWell(),
        '/BoxDecoration': (context) => const myBoxDecoration(),
      },

      initialRoute: '/BoxDecoration',
    );
  }
}
