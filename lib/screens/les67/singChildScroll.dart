import 'package:flutter/material.dart';

class ScrollButtons1 extends StatefulWidget {
  const ScrollButtons1({Key? key}) : super(key: key);

  @override
  State<ScrollButtons1> createState() => _ScrollButtonsState1();
}

class _ScrollButtonsState1 extends State<ScrollButtons1> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i += 1) {
      // i < 500
      widgets.add(Row(children: [
        Expanded(
            child: Text(
              '$i',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40),
            )),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                count += 1;
              });
            },
            child: Text(
              '+ $count',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // const Expanded(child: myButton()),
      ]));
      widgets.add(const Divider(thickness: 5,));
    }

    return SingleChildScrollView(
      child: Column(
        children: widgets,
      ),
    );
  }
}

class myButton extends StatefulWidget {
  const myButton({Key? key}) : super(key: key);

  @override
  State<myButton> createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {
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
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
