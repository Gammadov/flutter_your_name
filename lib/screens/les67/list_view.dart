/*-----------------------------------------------------

1. Внутри метода Widget build(BuildContext context)
     создайте пустой список widgets с типом данных Widget.

2. Заполните список widgets данными, используя цикл
     for (int i = 0; i < 300; i += 1){}.
     Оформление см. на скриншоте в notion.
     Вам понадобятся виджеты: Row, Text, TextButton и Divider.
     Внутри строки находятся Text и TextButton.
       Text. Расположение текста по центру. Текст, размером 40.
       TextButton. Реализован подсчёт количества нажатий.
       Надпись внутри кнопки жирная, размером 40.
     После Row в список widgets добавляется Divider, с thickness: 5.

3. По умолчанию, метод Widget build(BuildContext context)
     возвращает контейнер: return Container().
     Замените контейнер на SingleChildScrollView().
     Внутрь SingleChildScrollView() поместите Column().
     Внутрь Column() поместите widgets.

4. Перейдите к файлу main.dart и запустите его.
     Проверьте, как кнопки реагируют на нажатия.
     Почему все кнопки изменяют количество нажатий?
     Как это изменить?

----------------------------------------------------------*/

import 'package:flutter/material.dart';

class ScrollButtons1 extends StatefulWidget {
  const ScrollButtons1({Key? key}) : super(key: key);

  @override
  _ScrollButtons1State createState() => _ScrollButtons1State();
}

class _ScrollButtons1State extends State<ScrollButtons1> {
  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      itemCount: 300,
         //Изменить itemCount
      itemBuilder: (_, int index) => Row(
        children: [
          Expanded(
            child: Text(
              '$index',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40),
            ),
          ),
          const Expanded(
            child: MyButton(),
          ),
        ],
      ),
      separatorBuilder: (_, int index) => const Divider(thickness: 5),
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          count += 1;
        });
      },
      child: Text(
        '+ $count',
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
