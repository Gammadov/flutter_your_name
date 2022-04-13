import 'package:flutter/material.dart';

class myInkWell extends StatefulWidget {
  const myInkWell({Key? key}) : super(key: key);

  @override
  _myInkWellState createState() => _myInkWellState();
}

class _myInkWellState extends State<myInkWell> {
  int pink = 0;
  int yellow = 0;
  int blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                pink += 1;
              });
            },
            child: Ink(
              width: double.infinity,
              color: Colors.pinkAccent,
              child: Text(
                'нажали $pink раз',
                style: TextStyle(fontSize: 65),
              ),
            ),
          )),
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                yellow += 1;
              });
            },
            child: Ink(
              width: double.infinity,
              color: Colors.yellow,
              child: Text(
                'нажали $yellow раз',
                style: TextStyle(fontSize: 65),
              ),
            ),
          )),
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                blue += 1;
              });
            },
            child: Ink(
              width: double.infinity,
              color: Colors.indigo,
              child: Text(
                'нажали $blue раз',
                style: TextStyle(fontSize: 65),
              ),
            ),
          )),
        ],
      ),
    );
  }
