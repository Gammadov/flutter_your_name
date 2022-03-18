import 'package:flutter/material.dart';

class myButtons extends StatelessWidget {
  const myButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {print('ElevatedButton');},
              onLongPress: () {print('Elevated long');},
              child:
              const Text('ElevatedButton', style: TextStyle(fontSize: 30))),
          OutlinedButton(
              onPressed: () {print('OutlinedButton');},
              onLongPress: () {print('Outlined long');},
              child:
              const Text('OutlinedButton', style: TextStyle(fontSize: 30))),
          TextButton(
              onPressed: () {print('TextButton');},
              onLongPress: () {print('Text long');},
              child:
              const Text('TextButton', style: TextStyle(fontSize: 30))),
          IconButton(
              onPressed: () {print('IconButton');},
              icon:
              const Icon(Icons.add_circle_outlined, size: 50,)),
        ],
      ),
    );
  }
}