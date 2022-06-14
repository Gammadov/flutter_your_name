import 'package:flutter/material.dart';

import 'count_button.dart';

class NoInherited extends StatelessWidget {
  const NoInherited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Без InheritedWidget')),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            'итого: ',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 30),
          CountButton(start: 0, step: 3),
        ],
      ),
    );
  }
}
