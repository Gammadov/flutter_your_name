import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les102_stream_p1/fake_api.dart';

class MyStreamBuilder extends StatefulWidget {
  const MyStreamBuilder({Key? key}) : super(key: key);

  @override
  State<MyStreamBuilder> createState() => _MyStreamBuilderState();
}

class _MyStreamBuilderState extends State<MyStreamBuilder> {
  int colorInt = 0xFF9E9E9E;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorInt),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FakeApi.get100colors(const Duration(milliseconds: 400)),
              initialData: const {
                'name': 'waiting',
                'value': 'dddddd',
              },
              builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
                int colorCodeInt = int.parse('0xFF' + snapshot.data!['value']);
                return Container(color: Color(colorCodeInt));
              },
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          Expanded(
            child: FutureBuilder(
              future: FakeApi.getColor(),
              initialData: const {
                'name': 'waiting',
                'value': 'ffffff',
              },
              builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
                int colorCodeInt = int.parse('0xFF' + snapshot.data!['value']);
                return Container(color: Color(colorCodeInt));
              },
            ),
          ),
        ],
      ),
    );
  }
}
