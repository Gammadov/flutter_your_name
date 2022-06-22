import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les102_stream_builder/stream_color.dart';
import 'package:flutter_your_name/screens/les68_recent_calls/recent_calls_screen.dart';
import 'package:flutter_your_name/screens/les69_navigator/named_navigator.dart';
import 'package:flutter_your_name/screens/les73/les73.dart';
import 'package:flutter_your_name/screens/les73/les73_gesture_detector%20.dart';
import 'package:flutter_your_name/screens/les74_inkwell/les74_inkwell.dart';
import 'package:flutter_your_name/screens/les75_box_decoration/les75_box_decoration.dart';
import 'package:flutter_your_name/screens/les98_inherited/inherited.dart';
import 'package:flutter_your_name/screens/les98_inherited/no_inherited.dart';
import 'package:flutter_your_name/screens/les99_inherited_2/inherited_99.dart';
import 'package:flutter_your_name/screens/les99_inherited_2/no_inherited_99.dart';

import 'advanced/bottom_sheet.dart';

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
        '/1': (context) => const TestPage(),

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),

        '/lamp': (context) => const Lamp(),
        '/GestureDetector': (context) => const myGestureDetector(),
        '/InkWell': (context) => const myInkWell(),
        '/BoxDecoration': (context) => const myBoxDecoration(),

        '/NoInherited': (context) => const Screen1(value: 10),
        '/Inherited': (context) => const Screen2(value: 10),

        '/NoInherited_99': (context) => Screen1_99(value: -10, step: 3),
        '/Inherited_99': (context) => Screen2_99(value: 0, step: 2),

        '/ColorScreen': (context) => const ColorScreen(),
      },

      initialRoute: '/ColorScreen',
    );
  }
}
