/*-----------------------------------------------------

1. Внутри метода Widget build(BuildContext context)
     создайте пустой список widgets с типом данных Widget.

2. Заполните список widgets данными, используя цикл
     for (int i = 0; i < 300; i += 1){}.
     Оформление см. на скриншоте в notion.
     Вам понадобятся виджеты: Row, Text, TextButton и Divider.
     Внутри строки находятся Text и TextButton.
       Text. Расположение текста по центру. Текст жирный, размером 40.
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