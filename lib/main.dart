import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les51_52/airport_scoreboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scoreboard(), // подключаем свои виджеты к home
    );

  }
}
