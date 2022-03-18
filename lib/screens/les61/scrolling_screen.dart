/*-----------------------------------------------------

1. Создайте в файле stless виджет ScrollText.

2. Внутри метода Widget build(BuildContext context)
     создайте пустой список widgets с типом данных Widget.

3. Заполните список widgets данными, используя цикл
     for (int i = 0; i < 100; i += 1){}.
     Оформление см. на скриншоте в notion.
     Вам понадобятся виджеты: контейнер, текст.
     Контейнер высотой 30, с отступом по левому краю на 17.
     Текст жирный, размером 20.

4. По умолчанию, метод Widget build(BuildContext context)
     возвращает контейнер: return Container().
     Замените контейнер на Scaffold().
     Внутри Scaffold:
     appBar: AppBar(title: ). В title поместите текст 'List of lines'.
     body: Внутри body поместите Column().

5.  Внутри Column() надо разместить SingleChildScrollView и жёлтый контейнер.
     Цвет контейнера yellow[300], высота 70.
     Внутри SingleChildScrollView:
     physics: const BouncingScrollPhysics().
     child: Column, внутри которой список widgets.

6. В файле main.dart найдите виджет MaterialApp. В параметре
     home укажите виджет ScrollText.

----------------------------------------------------------*/

import 'package:flutter/material.dart';

class ScrollText extends StatefulWidget {
  const ScrollText({Key? key}) : super(key: key);

  @override
  State<ScrollText> createState() => _ScrollTextState();
}

class _ScrollTextState extends State<ScrollText> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i += 1) {
      widgets.add(Container(
        height: 30,
        padding: const EdgeInsets.only(left: 17),
        child: Text(
          'Line under number $i',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('List of lines'),
      ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                ),
              ),
            ),
            Container(
              height: 70,
              color: Colors.yellow[300],
            )
          ],
        ),

        Positioned(
          right: 50,
          bottom: 40,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                count += 1;
              });
            },
            child: Text(
              '+ $count',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}
