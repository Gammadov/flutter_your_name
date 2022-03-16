import 'package:flutter/material.dart';

class myButtons extends StatelessWidget {
  const myButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      alignment: Alignment.center,
      child: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: const Text('ElevatedButton')),
          OutlinedButton(onPressed: (){}, child: const Text('OutlinedButton')),
          TextButton(onPressed: (){}, child: const Text('TextButton')),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle_outlined)),
        ],
      ),
    );
  }
}
