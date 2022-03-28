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

/* --------------------------------------------------------
class ScrollButtons extends StatefulWidget {
  const ScrollButtons({Key? key}) : super(key: key);

  @override
  State<ScrollButtons> createState() => _ScrollButtonsState();
}

class _ScrollButtonsState extends State<ScrollButtons> {

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
*/
