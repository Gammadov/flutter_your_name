import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les68_recent_calls/recent_calls_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: RecentCalls(),
      ), // подключаем свои виджеты к home
    );
  }
}
