import 'package:flutter/material.dart';

// class myStack extends StatelessWidget {
//   const myStack({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         // Размер вложенных виджетов. Не действует на Positioned ?
//         // По умолчанию StackFit.loose. Посмотреть на StackFit.expand
//         fit: StackFit.loose,
//
//         // Расположение вложенных виджетов. По умолчанию AlignmentDirectional.topStart
//         // alignment: AlignmentDirectional.center,
//
//         children: <Widget>[
//           // Center(
//           //   child: Container(
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.red,
//           ),
//           // ),
//           Container(
//             width: 150,
//             height: 150,
//             color: Colors.green,
//           ),
//
//           // Продвинутое расположение вложенного в стек виджета. Не зависит от alignment.
//           // Строго соблюдает отступы, ценой размеров виджета.
//           // Существуют именованные версии конструктора Positioned.
//           // Positioned(
//           //   top: 25,
//           //   left: 10,
//           //   right: 15,
//           //   child: Container(
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.blue,
//           ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

class myStack extends StatelessWidget {
  const myStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.green,
          ),
          Positioned(
            top: 20,
            left: 40,
            bottom: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
