import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(title: const Text('Хочу')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (BuildContext context) {
            //     return Page2();
            //   }),
            // );
            Navigator.pushNamed(context, '/page2');
          },
          child: const Text(
            'На вторую страницу',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('Домой')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'На первую страницу',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
