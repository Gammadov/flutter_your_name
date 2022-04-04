// import 'package:flutter/material.dart';
//
// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.indigo[200],
//       appBar: AppBar(title: const Text('Хочу')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(builder: (BuildContext context) {
//             //     return Page2();
//             //   }),
//             // );
//             Navigator.pushNamed(context, '/page2');
//           },
//           child: const Text(
//             'На вторую страницу',
//             style: TextStyle(fontSize: 30),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(title: const Text('Домой')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {},
//           child: const Text(
//             'На первую страницу',
//             style: TextStyle(fontSize: 30),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen', style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
            Navigator.pop(context);
          },
          child: const Text('Go back!', style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}