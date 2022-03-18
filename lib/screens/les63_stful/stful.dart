import 'package:flutter/material.dart';

class Statefull extends StatefulWidget {

  int start, step;

  Statefull({required this.start, required this.step, Key? key}) : super(key: key);

  @override
  State<Statefull> createState() => _StatefullState(start, step);
}

class _StatefullState
    extends State<Statefull> {

  int start, step;

  _StatefullState(this.start, this.step);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            start += step;
          });
          print('Нажали $start раз');
        },
        child: Text(
          'Нажали $start раз',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
