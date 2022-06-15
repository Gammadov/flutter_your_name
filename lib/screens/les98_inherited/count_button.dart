import 'package:flutter/material.dart';

class CountButton extends StatefulWidget {
  int start, step;

  CountButton({required this.start, required this.step, Key? key})
      : super(key: key);

  @override
  State<CountButton> createState() => _CountButtonState(start, step);
}

class _CountButtonState extends State<CountButton> {
  int start, step, count = 0;
  bool begin = false;

  _CountButtonState(this.start, this.step);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: OutlinedButton(
        onPressed: () {
          begin = true;
          setState(() {
            start += step;
            count += 1;
          });
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFFF3E5F5))),
        child: Text(
          begin ? 'нажали $count раз' : 'начинаем с $start; шаг = $step',
          style: const TextStyle(fontSize: 30, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
