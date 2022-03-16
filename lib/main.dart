import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les61/scrolling_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScrollText(), // подключаем свои виджеты к home
    );
  }
}
