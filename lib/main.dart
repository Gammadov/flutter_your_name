import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les68_recent_calls/recent_calls_screen.dart';
import 'package:flutter_your_name/screens/les69_navigator/my_navigator.dart';
import 'package:flutter_your_name/screens/les69_navigator/named_navigator.dart';

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
      },

        initialRoute: '/second',
    );
  }
}
