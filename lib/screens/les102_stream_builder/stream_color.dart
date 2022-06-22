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



// 2

import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les102_stream_builder/fake_api.dart';


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
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

              String colorName = 'light cyan';
              String colorHex = '0xffE0FFFF';

              if (snapshot.hasData) {
                colorHex = '0xFF' + snapshot!.data['value'];
                colorName = snapshot!.data['name'];
              }


              final int colorCode = int.parse(colorHex);

              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color(colorCode),
                alignment: Alignment.center,
                child: Text(
                  colorName,
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