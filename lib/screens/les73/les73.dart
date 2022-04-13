import 'package:flutter/material.dart';

class Lamp extends StatefulWidget {
  const Lamp({Key? key}) : super(key: key);

  @override
  _LampState createState() => _LampState();
}

class _LampState extends State<Lamp> {
  bool nazhata = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lightbulb,
            size: 150,
            color: nazhata ? Colors.yellow : Colors.grey,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                nazhata = !nazhata;
              });
            },
            child: Text(
              nazhata ? 'Включить' : 'Выключить',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
