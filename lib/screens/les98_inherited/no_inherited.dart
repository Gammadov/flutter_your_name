import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final int value;

  const Screen1({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('БЕЗ Inherited'),
      ),
      backgroundColor: Colors.yellow[100],
      body: Column(
        children: [
          One(value: value),
        ],
      ),
    );
  }
}

class One extends StatelessWidget {
  final int value;
  const One({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Two(value: value);
  }
}

class Two extends StatelessWidget {
  final int value;
  const Two({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Three(value: value);
  }
}

class Three extends StatelessWidget {
  final int value;
  const Three({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString(),
      style: const TextStyle(fontSize: 30),
    );
  }
}