// List<String> data = [
//   'Санкт-Петербург', '18:00', 'ЮТэйр',
//   'Калининград', '18:25', 'Победа',
//   'Сыктывкар', '18:40', 'ЮТэйр',
//   'Саратов', '18:40', 'Победа',
//   'Волгоград', '18:45', 'Победа',
//   'Минеральные Воды', '18:45', 'Победа',
//   'Санкт-Петербург', '18:50', 'Аэрофлот'
// ];

import 'package:flutter/material.dart';

class ScoreboardItem {
  String city;
  String time;
  String company;

  ScoreboardItem(
      {required this.city, required this.time, required this.company});
}

class Scoreboard extends StatelessWidget {
  const Scoreboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // вместо получения данных из сети
    List<String> data = [
      'Санкт-Петербург', '18:00', 'ЮТэйр',
      'Калининград', '18:25', 'Победа',
      'Сыктывкар', '18:40', 'ЮТэйр',
      'Саратов', '18:40', 'Победа',
      'Волгоград', '18:45', 'Победа',
      'Минеральные Воды', '18:45', 'Победа',
      'Санкт-Петербург', '18:50', 'Аэрофлот'
    ];

    List<ScoreboardItem> items = [];
    for (int i = 0; i < data.length; i += 3) {
      ScoreboardItem object = ScoreboardItem(
          city: data[i], time: data[i + 1], company: data[i + 2]);
      items.add(object);
    }

    List<Widget> widgetList = [];
    for (var element in items) {
      Widget myWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('направление вылета: ${element.city}'),
          Text('время вылета: ${element.time}'),
          Text('компания: ${element.company}'),
        ],
      );

      widgetList.add(myWidget);
      widgetList.add(const Divider(thickness: 1));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Внуково, самолёты')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widgetList),
    );
  }
}
