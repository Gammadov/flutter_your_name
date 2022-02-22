/*---------------------------------------------------

ЗАДАНИЕ 1. Построение класса-модели.

1.1. На основе данных таблицы les51_noble_gases,
     создайте в этом файле класс NobleGasItem,
     описывающий каждый благородный газ.

1.2. Внутри класса определите поля и конструктор,
     у которого все аргументы именованные и required
     Перейдите к файлу noble_gases_ribbon

---------------------------------------------------*/

class NobleGasItem {
  int atomicNumber;
  String symbol;
  String name;
  String weight;

  NobleGasItem(
      {required this.atomicNumber,
      required this.symbol,
      required this.name,
      required this.weight});
}