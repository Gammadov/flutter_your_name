import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les67/singChildScroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ScrollButtons1(),
      ), // подключаем свои виджеты к home
    );
  }
}
