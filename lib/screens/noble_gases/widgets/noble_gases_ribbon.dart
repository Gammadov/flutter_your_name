/*---------------------------------------------------------

ЗАДАНИЕ 2. Создание ленты виджетов.

2.1. Создайте в этом файле stless виджет NobleGasRibbon.

2.2. Перенесите список List<List<String>> noble_gases
     внутрь метода Widget build(BuildContext context).

2.3.1. Внутри метода Widget build(BuildContext context)
       создайте пустой список с типом данных NobleGasItem.
       Назовите список ngList.
2.3.2. Используя List<List<String>> noble_gases и
       цикл for, заполните ngList данными.

2.4. Внутри виджета NobleGasRibbon, создайте метод
     Widget elementDesign(NobleGasItem gas).
     Метод формирует ячейку ленты. Дизайн ячейки в notion.

2.5.1. Внутри метода Widget build(BuildContext context)
       создайте пустой список с типом данных Widget.
       Назовите список ribbon.
2.5.2. Используя список ngList, метод elementDesign() и
       цикл for(var gas_item in ngList),
       заполните ribbon данными.

2.6. По умолчанию, метод Widget build(BuildContext context)
     возвращает контейнер: return Container().
     Замените контейнер на колонку (Column()).
     В агрументе колонки children укажите ribbon.

---------------------------------------------------------*/



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/noble_gases/widgets/noble_gases_model.dart';

class NobleGasRibbon extends StatelessWidget {
  const NobleGasRibbon({Key? key}) : super(key: key);

  Widget rowDesign(NobleGasItem gas) {
    return Column(children: [
      Row(
        children: [
          Container(
              width: 60,
              alignment: Alignment.center,
              child: Text(
                gas.atomicNumber.toString(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              )),
          Container(
              width: 60,
              alignment: Alignment.center,
              child: Text(gas.symbol,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ))),
          const SizedBox(width: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(gas.name,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
              const SizedBox(height: 1),
              Text(gas.weight,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
      const Divider(thickness: 1, color: Colors.white70),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    List<List<String>> noble_gases = [
      ["Atomic number", "Symbol", "Name", "Standard atomic weight"],
      ['2', 'He', 'Гелий', '4.002602(2)'],
      ['10', 'Ne', 'Неон', '20.1797(6)'],
      ['18', 'Ar', 'Аргон', '39.948(1)'],
      ['36', 'Kr', 'Криптон', '83.80(1)'],
      ['54', 'Xe', 'Ксенон', '131.29(2)'],
      ['86', 'Rn', 'Радон', '(222)'],
      ['118', 'Oq', 'Оганесон', '(294)']
    ];

    List<NobleGasItem> ngList = [];
    for (int i = 1; i < noble_gases.length; i += 1) {
      ngList.add(NobleGasItem(
        atomicNumber: int.parse(noble_gases[i][0]),
        symbol: noble_gases[i][1],
        name: noble_gases[i][2],
        weight: noble_gases[i][3],
      ));
    }

    List<Widget> ribbon = [];
    for (var gas_item in ngList) {
      ribbon.add(rowDesign(gas_item));
    }

    return Column(children: ribbon);
  }
}

// ЗАДАНИЕ 2. Построение ленты виджетов.
// 1.1. На основе данных таблицы noble_gases, создайте в этом файле класс описывающий каждый благородный газ.
// 1.2. Внутри класса определите поля и конструктор, у которого все аргументы именованные и required
// Перейдите к файлу noble_gases_ribbon

// 2.1. Создайте в этом файле stless виджет.
// 2.2. Внутри виджета создайте списко с объектами класса , используя List<List<String>> noble_gases
// 3. Внутри виджета функцию, возвращающую виджет-строку (аналог myRow() в проекте про телеграм)
// 4. С помощью функции из п.3 и списка из п.2, создайте список виджетов, который
// "правильно оформляет" данные из списка п.2. Поместите его в return Column. (см. my_row_panel)
