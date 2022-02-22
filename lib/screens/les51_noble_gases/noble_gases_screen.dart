/*---------------------------------------------------------

ЗАДАНИЕ 3. Создание экрана.

3.1. Создайте в этом файле stless виджет NobleGasesScreen.

3.2.1. По умолчанию, метод Widget build(BuildContext context)
       возвращает контейнер: return Container().
       Замените контейнер на Scaffold().
       В агрументе appBar укажите AppBar(title: ).

3.2.2. Внутри Scaffold:
       appBar: AppBar(title: ). В title поместите текст 'Благородные газы'.
       backgroundColor: Colors.blueGrey
       body: Внутри body поместите NobleGasRibbon(). Так, чтобы дизайн совпадал с картинкой из notion.

---------------------------------------------------------*/

import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les51_noble_gases/widgets/noble_gases_ribbon.dart';

class NobleGasesScreen extends StatelessWidget {
  const NobleGasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Благородные газы'),
      ),
      backgroundColor: Colors.blueGrey,
      body: const SizedBox(
        width: double.infinity,
        child:  Padding(
          padding: EdgeInsets.only(top: 10),
          child: NobleGasRibbon(),
        ),
      ),
    );
  }
}
