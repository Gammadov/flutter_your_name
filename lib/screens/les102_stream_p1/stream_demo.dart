import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les102_stream_p1/fake_api.dart';

class StreamScreen extends StatefulWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  int colorInt = 0xFF9E9E9E;
  String colorName = 'No color';
  StreamSubscription? listener;
  Stream<Map<String, dynamic>>? colors;

  singleColor() {
    Future response = FakeApi.getColor();
    response.then((map) {
      setState(() {
        colorInt = int.parse('0xFF' + map['value']!);
        colorName = map['name']!;
      });
    });
  }

  createStream() {
    colors = FakeApi.get100colors(const Duration(milliseconds: 300));
  }

  subscribe() {
    if(colors != null) {
      listener = colors!.listen((map) {
        print(map['name']!);
        setState(() {
          colorInt = int.parse('0xFF' + map['value']!);
          colorName = map['name']!;
        });
      });
    }
  }

  pauseSubscribe(){
    if (listener != null) listener!.pause();
  }

  resumeSubscribe(){
    if (listener != null) listener!.resume();
  }

  cancelSubscribe(){
    if (listener != null) listener!.cancel();
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
              onPressed: (){
                createStream();
                subscribe();
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
            const SizedBox(height: 15),
            ElevatedButton(
              // stream button
              onPressed: pauseSubscribe,
              child: Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text(
                  'Pause',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              style: ElevatedButton.styleFrom(primary: sysColor),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              // stream button
              onPressed: resumeSubscribe,
              child: Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text(
                  'Resume',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              style: ElevatedButton.styleFrom(primary: sysColor),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              // stream button
              onPressed: cancelSubscribe,
              child: Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text(
                  'Cancel',
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