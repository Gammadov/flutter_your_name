/*
// 1

import 'package:flutter/material.dart';


class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color'), centerTitle: true),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.redAccent,
            // color: Color((int.parse('0xFFFFFFFF'))),
            alignment: Alignment.center,
            child: const Text(
              'red accent',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}


*/

/*
// 2
import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les102_stream_p1/fake_api.dart';


class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color'), centerTitle: true),
      body: Column(
        children: [
          FutureBuilder(
            future: FakeApi.getColor(),
            initialData: const {
              'name': 'Lavender',
              'value': 'b4a7c9',
            },
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

              String colorHex = '0xFF' + snapshot.data['value'];
              String colorName = snapshot.data['name'];

              final int colorCode = int.parse(colorHex);

              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color(colorCode),
                alignment: Alignment.center,
                child: Text(
                  colorName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 5,
                        )
                      ]),
                ),
              );
            },
          ),
          const Divider(thickness: 2, height: 2, color: Colors.red),
          const Divider(thickness: 2, height: 2, color: Colors.lightGreenAccent),
        ],
      ),
    );
  }
}


 */

/*
// 3
import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les102_stream_p1/fake_api.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color'), centerTitle: true),
      body: Column(
        children: [
          // FutureBuilder(
          //   future: FakeApi.getColor(),
          //   initialData: const {
          //     'name': 'Lavender',
          //     'value': 'b4a7c9',
          //   },
          //   builder: (context, AsyncSnapshot<dynamic> snapshot) {
          //
          //     String colorHex = '0xFF' + snapshot.data['value'];
          //     String colorName = snapshot.data['name'];
          //
          //     final int colorCode = int.parse(colorHex);
          //
          //     return Container(
          //       width: double.infinity,
          //       height: MediaQuery.of(context).size.height * 0.4,
          //       color: Color(colorCode),
          //       alignment: Alignment.center,
          //       child: Text(
          //         colorName,
          //         textAlign: TextAlign.center,
          //         style: const TextStyle(
          //             fontSize: 40,
          //             color: Colors.white,
          //             shadows: <Shadow>[
          //               Shadow(
          //                 offset: Offset(1, 1),
          //                 blurRadius: 5,
          //               )
          //             ]),
          //       ),
          //     );
          //   },
          // ),
          StreamBuilder(
            stream: FakeApi.get100colors(const Duration(seconds: 1)),
            initialData: const {
              'name': 'Lavender',
              'value': 'b4a7c9',
            },
            builder: (context, AsyncSnapshot<dynamic> snapshot){
              String colorHex = '0xFF' + snapshot.data['value'];
              String colorName = snapshot.data['name'];

              final int colorCode = int.parse(colorHex);

              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color(colorCode),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: Text(
                  colorName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 5,
                        )
                      ]),
                ),
              );

            },
          ),
          const Divider(thickness: 2, height: 2, color: Colors.red),
          const Divider(
              thickness: 2, height: 2, color: Colors.lightGreenAccent),
        ],
      ),
    );
  }
}


 */
/*
// 4
import 'package:flutter/material.dart';

import 'fake_api.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  bool isStream = true;

  @override
  Widget build(BuildContext context) {
    const Color? sysColor = Colors.blueGrey;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
        centerTitle: true,
        backgroundColor: sysColor,
      ),

      backgroundColor: const Color(0xFFd2b48c),

      body: Column(
        children: [
          const SizedBox(height: 30),
          if (!isStream)
            FutureBuilder(
              future: FakeApi.getColor(),
              initialData: const {
                'name': 'Lavender color',
                'value': 'b4a7c9',
              },
              builder: (context, AsyncSnapshot<dynamic> snapshot) {
                final int colorCode =
                    int.parse('0xFF' + snapshot.data['value']);

                return Container(
                  color: Color(colorCode),
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  child: Text(
                    snapshot.data['name'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 5,
                          )
                        ]),
                  ),
                );
              },
            ),
          if (isStream)
            StreamBuilder(

              stream: FakeApi.get100colors(const Duration(milliseconds: 100)),

              initialData: const {
                'name': ' Irish Spring Green Green ',
                'value': '8bf275',
              },

              builder: (context, AsyncSnapshot<dynamic> snapshot) {
                final int colorCode =
                    int.parse('0xFF' + snapshot.data['value']);

                return Container(
                  color: Color(colorCode),
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  child: Text(
                    snapshot.data['name'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 5,
                          )
                        ]),
                  ),
                );
              },
            ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text(
              isStream ? 'Tan color' : 'Lavender color',
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    )
                  ]),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: sysColor),
            onPressed: () {
              setState(() {
                isStream = false;
              });
            },
            child: Container(
              width: 200,
              padding: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              child: const Text(
                'Future',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isStream = true;
              });
            },
            child: Container(
              width: 200,
              padding: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              child: const Text(
                'Stream',
                style: TextStyle(fontSize: 20),
              ),
            ),
            style: ElevatedButton.styleFrom(primary: sysColor),
          ),
          const Spacer(),
        ],
      ),

    );
  }
}


 */

// /*
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les102_stream_p1/fake_api.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  int colorInt = 0xFF9E9E9E;
  String colorName = 'No color';

  singleColor() {
    Future response = FakeApi.getColor();
    response.then((map) {
      setState(() {
        colorInt = int.parse('0xFF' + map['value']!);
        colorName = map['name']!;
      });
    });
  }

  hundredColors() {
    Stream<Map<String, dynamic>> colors =
        FakeApi.get100colors(const Duration(milliseconds: 300));

    StreamSubscription listener = colors.listen((map) {
      setState(() {
        colorInt = int.parse('0xFF' + map['value']!);
        colorName = map['name']!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color? sysColor = Colors.blueGrey;

    return Scaffold(
      backgroundColor: Color(colorInt),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.center,
              child: Text(
                colorName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 5,
                      )
                    ]),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              // future button
              style: ElevatedButton.styleFrom(primary: sysColor),
              onPressed: singleColor,
              child: Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text(
                  'Future',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              // stream button
              onPressed: hundredColors,
              child: Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text(
                  'Stream',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              style: ElevatedButton.styleFrom(primary: sysColor),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// */
