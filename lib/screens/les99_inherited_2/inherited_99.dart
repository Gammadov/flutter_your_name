import 'package:flutter/material.dart';

class Anifa extends InheritedWidget {
  final int value;
  const Anifa({
    Key? key,
    required Widget child,
    required this.value,
  }) : super(key: key, child: child);

  static Anifa of(BuildContext context) {
    final Anifa? result = context.dependOnInheritedWidgetOfExactType<Anifa>();
    assert(result != null, 'No Anifa found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Anifa old) {
    return this.value != old.value;
  }
}

class Screen2_99 extends StatefulWidget {
  final int step;
  int value;

  Screen2_99({Key? key, required this.value, required this.step})
      : super(key: key);

  @override
  State<Screen2_99> createState() => _Screen2_99State();
}

class _Screen2_99State extends State<Screen2_99> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Anifa(
      value: widget.value,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('БЕЗ Inherited'),
        ),
        backgroundColor: Colors.yellow[100],
        body: Column(
          children: [
            One(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.value = widget.value + widget.step;
                  count += 1;
                });
              },
              child: Text(
                'Нажали $count раз',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Two();
  }
}

class Two extends StatelessWidget {

  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Three(value: Anifa.of(context).value);
  }
}

class Three extends StatelessWidget {
  final int value;

  const Three({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString(),
      style: const TextStyle(fontSize: 30),
    );
  }
}
