// import 'package:flutter/material.dart';
//
// class myBoxDecoration extends StatefulWidget {
//   const myBoxDecoration({Key? key}) : super(key: key);
//
//   @override
//   State<myBoxDecoration> createState() => _myBoxDecorationState();
// }
//
// class _myBoxDecorationState extends State<myBoxDecoration> {
//   bool nazhata = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[100],
//       body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//             Icons.lightbulb,
//             size: 150,
//             color: nazhata ? Colors.yellowAccent : Colors.black,
//           ),
//               const SizedBox(height: 50),
//               Container(
//                 width: 400,
//                 height: 250,
//                 child: Center(
//                   child: ElevatedButton(
//                     onPressed: (){
//                       setState(() {
//                         nazhata = !nazhata;
//                       });
//                     },
//                     child: Text(
//                       nazhata ? 'Включить' : 'Выключить',
//                       style: const TextStyle(fontSize: 50),
//                     ),
//                   ),
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.orange,
//                   border: Border.all(width: 3),
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(color: Colors.green, offset: Offset(-20, 40), blurRadius: 10, spreadRadius: 10),
//                     BoxShadow(color: Colors.red, offset: Offset(40, 20), blurRadius: 10, spreadRadius: 20),
//                   ],
//                 ),
//           ),
//         ],
//       )),
//     );
//   }
// }


import 'package:flutter/material.dart';

class myBoxDecoration extends StatefulWidget {
  const myBoxDecoration({Key? key}) : super(key: key);

  @override
  State<myBoxDecoration> createState() => _myBoxDecorationState();
}

class _myBoxDecorationState extends State<myBoxDecoration> {
  bool nazhata = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lightbulb,
                size: 150,
                color: nazhata ? Colors.yellowAccent : Colors.black,
              ),
              const SizedBox(height: 50),
              Container(
                width: 400,
                height: 250,
                color: Colors.green,
                child: Center(
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        nazhata = !nazhata;
                      });
                    },
                    child: Text(
                      nazhata ? 'Включить' : 'Выключить',
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}