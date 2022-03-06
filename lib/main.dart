import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les54/les54_layouts.dart';

void main() {
  runApp(const Examples());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Examples()), // подключаем свои виджеты к home
    );
  }
}
