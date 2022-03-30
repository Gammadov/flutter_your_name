import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les69_navigator/named_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: Page1(),
      ),
      // подключаем свои виджеты к home

        routes: <String, WidgetBuilder>{
          '/page2': (BuildContext context) => const Page2(),
        }
        );
  }
}
