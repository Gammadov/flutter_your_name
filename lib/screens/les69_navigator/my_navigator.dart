// import 'package:flutter/material.dart';
//
// class Page1 extends StatefulWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   _Page1State createState() => _Page1State();
// }
//
// class _Page1State extends State<Page1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Страница 1')),
//       body: SizedBox(
//         height: 150,
//         width: double.infinity,
//         child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (BuildContext context) {
//                   return Page2();
//                 },
//               ));
//             },
//             onLongPress: () {
//               print('Outlined long');
//             },
//             child: const Text('Переход на страницу 2',
//                 style: TextStyle(fontSize: 30))),
//       ),
//     );
//   }
// }
//
//
// class Page2 extends StatefulWidget {
//   const Page2({Key? key}) : super(key: key);
//
//   @override
//   _Page2State createState() => _Page2State();
// }
//
// class _Page2State extends State<Page2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Страница 2')),
//       body: Center(
//         child: OutlinedButton(
//           child: const Text('НАЗАД', style: TextStyle(fontSize: 30)),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'Go to second page',
            style: TextStyle(fontSize: 30),
          ),
          // Within the `FirstRoute` widget
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondRoute widget
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Go back!',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
