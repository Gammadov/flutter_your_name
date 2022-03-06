// +--------------------------+----------+--------+
// | Наименование             | Ед.Изм.  | Цена   |
// +--------------------------+----------+--------+
// | Арахис соленый           | кг       | 115.00 |
// +--------------------------+----------+--------+
// | Грецкие орехи очищенные  | кг       | 370.00 |
// +--------------------------+----------+--------+
// | Имбирь в сахаре          | кг       | 204.00 |
// +--------------------------+----------+--------+
// | Кешью                    | кг       | 365.00 |
// +--------------------------+----------+--------+
// | Лимоны вялен.            | кг       | 129.00 |
// +--------------------------+----------+--------+
// | Миндаль очищенный        | кг       | 365.00 |
// +--------------------------+----------+--------+

import 'package:flutter/material.dart';

class NutFruit {
  String name;
  String unit;
  String price;

  NutFruit({required this.name, required this.unit, required this.price});
}

class NFwidget extends StatelessWidget {
  const NFwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> nuts_fruits = [
      'Наименование ',
      'Ед.Изм. ',
      'Цена',
      'Арахис соленый ',
      'кг ',
      '115.00',
      'Грецкие орехи очищенные ',
      'кг ',
      '370.00',
      'Имбирь в сахаре ',
      'кг ',
      '204.00',
      'Кешью ',
      'кг ',
      '365.00',
      'Лимоны вялен. ',
      'кг ',
      '129.00',
      'Миндаль очищенный ',
      'кг ',
      '365.00'
    ];

    List<NutFruit> food = [];
    for (int i = 3; i < nuts_fruits.length; i += 3) {
      NutFruit object = NutFruit(
          name: nuts_fruits[i],
          unit: nuts_fruits[i + 1],
          price: nuts_fruits[i + 2]);
      food.add(object);
    }

    List<Widget> widgetList = [];
    for (var element in food) {
      Widget design = Row(
        children: [
          SizedBox(
            width: 200,
              child: Text(
            element.name,
            style: TextStyle(fontSize: 20),
          )),
          SizedBox(
            width: 100,
            child: Text(
              element.unit,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text(
            element.price,
            style: TextStyle(fontSize: 20),
          ),
        ],
      );
      widgetList.add(design);
      widgetList.add(const Divider(
        thickness: 1,
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Орехи и сухофрукты'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(children: widgetList),
      ),
    );
  }
}
