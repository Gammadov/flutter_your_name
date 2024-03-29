/*-----------------------------------------------------

ЗАДАНИЕ 1. Построение класса-модели.

1.1. Создайте файл olympics22.dart в папке screens.

1.2. На основе данных таблицы, создайте класс Country,
     описывающий результаты каждой страны.
     Внутри класса определите необходимые поля и
     конструктор,у которого все аргументы именованные.

     +------------+--------+---------+--------+-------+
     | Страна     | Золото | Серебро | Бронза | Итого |
     +------------+--------+---------+--------+-------+
     | Норвегия   | 16     | 8       | 13     | 37    |
     +------------+--------+---------+--------+-------+
     | Германия   | 12     | 10      | 5      | 27    |
     +------------+--------+---------+--------+-------+
     | Китай      | 9      | 4       | 2      | 15    |
     +------------+--------+---------+--------+-------+
     | США        | 8      | 10      | 7      | 25    |
     +------------+--------+---------+--------+-------+
     | Швеция     | 8      | 5       | 5      | 18    |
     +------------+--------+---------+--------+-------+
     | Нидерланды | 8      | 5       | 4      | 17    |
     +------------+--------+---------+--------+-------+
     | Австрия    | 7      | 7       | 4      | 18    |
     +------------+--------+---------+--------+-------+
     | Швейцария  | 7      | 2       | 5      | 14    |
     +------------+--------+---------+--------+-------+
     | OKP        | 6      | 12      | 14     | 32    |
     +------------+--------+---------+--------+-------+


-----------------------------------------------------*/

/*----------------------------------------------------------

ЗАДАНИЕ 2. Создание и заполнение списка объектов.

2.1. Создайте stless виджет MedalStandings.

2.2. Перенесите список olympics2022
     внутрь метода Widget build(BuildContext context).

          List<String> olympics2022 = [
            'Страна', 'Золото', 'Серебро', 'Бронза', 'Итого',
            'Норвегия', '16', '8', '13', '37',
            'Германия', '12', '10', '5', '27',
            'Китай', '9', '4', '2', '15',
            'США', '8', '10', '7', '25',
            'Швеция', '8', '5', '5', '18',
            'Нидерланды', '8', '5', '4', '17',
            'Австрия', '7', '7', '4', '18',
            'Швейцария', '7', '2', '5', '14',
            'OKP', '6', '12', '14', '32',
          ];


2.3. Внутри метода Widget build(BuildContext context)
     создайте пустой список с типом данных Country.
     Назовите список countryList.

2.4. Используя olympics2022 и цикл for,
     заполните countryList данными.

----------------------------------------------------------*/

/*----------------------------------------------------------

ЗАДАНИЕ 4. Создание и заполнение списка виджетов.

4.1. По умолчанию, метод Widget build(BuildContext context)
     возвращает контейнер: return Container().
     Замените контейнер на Scaffold().
     В агрументе appBar укажите AppBar(title: ).

4.2. Внутри Scaffold:
     appBar: AppBar(title: ). В title поместите текст 'Медальный зачёт'.
     body: Внутри body поместите Column(). В агрументе колонки children укажите widgetList.

4.3. В файле bloc_on_streams.dart найдите виджет MaterialApp. В параметре
     home укажите виджет MedalStandings.

----------------------------------------------------------*/

import 'package:flutter/material.dart';

class Country {
  String country;
  String gold;
  String silver;
  String bronze;
  String total;

  Country(
      {required this.country,
        required this.gold,
        required this.silver,
        required this.bronze,
        required this.total});
}

class MedalStandingsIcons extends StatelessWidget {
  const MedalStandingsIcons({Key? key}) : super(key: key);

  Widget rowDesign(Country country){
    if(country.country == 'Страна')
     return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 115,
              child: Text(country.country, style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold))),
          SizedBox(
              width: 70, child: Icon(Icons.looks_one, color: Colors.orange)),
          SizedBox(width: 70, child: Icon(Icons.looks_two, color: Colors.grey)),
          SizedBox(width: 70, child: Icon(Icons.looks_3, color: Colors.brown)),
          SizedBox(
              width: 57, child: Icon(Icons.functions, color: Colors.green)),
        ],
      );
    else
      return Row(
      children: [
        SizedBox(width: 140, child: Text(country.country, style: const TextStyle(fontSize: 20))),
        SizedBox(width: 70, child: Text(country.gold, style: const TextStyle(fontSize: 20))),
        SizedBox(width: 70, child: Text(country.silver, style: const TextStyle(fontSize: 20))),
        SizedBox(width: 70, child: Text(country.bronze, style: const TextStyle(fontSize: 20))),
        Text(country.total, style: const TextStyle(fontSize: 20)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> olympics22 = [
      'Страна', 'Золото', 'Серебро', 'Бронза', 'Итого',
      'Норвегия', '16', '8', '13', '37',
      'Германия', '12', '10', '5', '27',
      'Китай', '9', '4', '2', '15',
      'США', '8', '10', '7', '25',
      'Швеция', '8', '5', '5', '18',
      'Нидерланды', '8', '5', '4', '17',
      'Австрия', '7', '7', '4', '18',
      'Швейцария', '7', '2', '5', '14',
      'OKP', '6', '12', '14', '32',
    ];

    List<Country> countryList = [];

    for (int i = 0; i < olympics22.length; i += 5) {
      Country countryObj = Country(
          country: olympics22[i],
          gold: olympics22[i + 1],
          silver: olympics22[i + 2],
          bronze: olympics22[i + 3],
          total: olympics22[i + 4]);
      countryList.add(countryObj);
    }
/*----------------------------------------------------------

ЗАДАНИЕ 3. Создание и заполнение списка виджетов.

3.1. Внутри метода Widget build(BuildContext context),
     после заполнения списка countryList, создайте
     пустой список с типом данных Widget.
     Назовите список widgetList.

3.2. Используя список countryList,
     цикл for(var country in countryList), заполните
     widgetList данными.
     Для этого вам надо будет определить свой виджет design,
     в который передаётся country.
     А после добавить виджет design в widgetList.

----------------------------------------------------------*/

    List<Widget> widgetList = [];

    for (var country in countryList) {
      // Widget design =
      // ;

      widgetList.add(rowDesign(country));
      widgetList.add(const Divider(thickness: 1));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Медальный зачёт')),
      body: Padding(
        padding: const EdgeInsets.only(left:10, top: 10),
        child: Column(children: widgetList),
      ),
    );
  }
}
