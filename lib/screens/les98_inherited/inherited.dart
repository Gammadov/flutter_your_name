import 'package:flutter/material.dart';

class Inherited extends InheritedWidget {
  final int value;

  const Inherited({
    Key? key,
    required Widget child,
    required this.value,
  }) : super(key: key, child: child);

  static Inherited of(BuildContext context) {
    final Inherited? result =
    context.dependOnInheritedWidgetOfExactType<Inherited>();
    assert(result != null, 'No Inherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Inherited old) {
    return old.value != value;
  }
}

class Screen2 extends StatelessWidget {
  final int value;

  const Screen2({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Inherited(
      value: value,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Пробуем поработать с Inherited'),
        ),
        backgroundColor: Colors.yellow[100],
        body: Column(
          children: const [
            One(),
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
    return const Two();
  }
}

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Three();
  }
}

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Inherited.of(context).value.toString(),
      style: const TextStyle(fontSize: 30),
    );
  }
}