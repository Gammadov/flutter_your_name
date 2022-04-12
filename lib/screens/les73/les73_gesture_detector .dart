import 'package:flutter/material.dart';

class myGestureDetector extends StatefulWidget {
  const myGestureDetector({Key? key}) : super(key: key);

  @override
  _myGestureDetectorState createState() => _myGestureDetectorState();
}

class _myGestureDetectorState extends State<myGestureDetector> {
  int pink = 0;
  int yellow = 0;
  int blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              InkWell(onTap: () {
                setState(() {
                  pink += 1;
                });
              }),
              Container(
                width: double.infinity,
                color: Colors.pinkAccent,
                child: Text(
                  'нажали $pink раз',
                  style: TextStyle(fontSize: 65),
                ),
              ),
            ],
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                yellow += 1;
              });
            },
            child: Container(
              width: double.infinity,
              color: Colors.yellow,
              child: Text(
                'нажали $yellow раз',
                style: TextStyle(fontSize: 65),
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                blue += 1;
              });
            },
            child: Container(
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
}
