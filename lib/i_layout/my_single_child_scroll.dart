import 'package:flutter/material.dart';

class mySingleChildScrollView extends StatelessWidget {
  const mySingleChildScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Создаём пустой список widgets с типом данных Widget.
    List<Widget> widgets = [];

    // Заполняем widgets данными, используя цикл
    for (int i = 0; i < 100; i += 1) {
      widgets.add(
        SizedBox(
          height: 30,
          width: double.infinity,
          child: Text('Line under number $i'),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.orangeAccent,
          height: 100,
        ),
        Expanded(

          // ИЗУЧАЕМЫЙ ВИДЖЕТ
          child: SingleChildScrollView(
            // Ось скролла. По умолчанию Axis.vertical (для вертикальных списков)
            // scrollDirection: Axis.horizontal,

            // Идти с последнего элемента в начало списка. По умолчанию false.
            // reverse: true,

            // Физика скролла
            // physics: const NeverScrollableScrollPhysics(),
            // physics: const AlwaysScrollableScrollPhysics(),
            // physics: const ClampingScrollPhysics(),
            // physics: const BouncingScrollPhysics(),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
          ),
        ),
      ],
    );
  }
}
