import 'package:flutter/material.dart';

class myScaffold extends StatelessWidget {
  const myScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Основа SafeArea.
    // Внутри SafeArea находится Scaffold.
    // Scaffold body находится Icon.
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Icon(
          Icons.sports_basketball,
          color: Colors.white,
          size: 200,
        ),
      ),
    );

    // Основа Scaffold.
    // Внутри Scaffold body находится SafeArea.
    // Внутри SafeArea Icon.
    return const Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Icon(Icons.sports_basketball, size: 200),
      ),
    );

    // Основа Scaffold.
    // Scaffold body находится Icon.
    return const Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Icon(Icons.sports_basketball, size: 200),
    );
  }
}
