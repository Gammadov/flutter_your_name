import 'package:flutter/material.dart';

class Screen1_99 extends StatefulWidget {
  final int step;
  int value;

  Screen1_99({Key? key, required this.value, required this.step})
      : super(key: key);

  @override
  State<Screen1_99> createState() => _Screen1_99State();
}

class _Screen1_99State extends State<Screen1_99> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('БЕЗ Inherited'),
      ),
      backgroundColor: Colors.yellow[100],
      body: Column(
        children: [
          One(value: widget.value),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.value = widget.value + widget.step;
                count += 1;
              });
            },
            child: Text(
              'Нажали $count раз',
              style: const TextStyle(fontSize: 30),
            ),
          ),
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
