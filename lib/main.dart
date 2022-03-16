import 'package:flutter/material.dart';
import 'package:flutter_your_name/i_layout/my_stack.dart';
import 'package:flutter_your_name/screens/les61/scrolling_screen.dart';

import 'i_layout/my_buttons.dart';
import 'i_layout/my_single_child_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: myButtons(),
      ), // подключаем свои виджеты к home
    );
  }
}
