import 'package:flutter/material.dart';

class Examples extends StatelessWidget {
  const Examples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.red,
    ));

    return OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: Container(color: Colors.red, width: 4000, height: 50),
    );

    return Center(
      child: Container(
        color: Colors.orange,
        width: 10,
        height: 10,
        child: UnconstrainedBox(
          child: Container(color: Colors.green, width: 50, height: 50),
        ),
      ),
    );

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color: Colors.red, width: 150, height: 250),
      ),
    );

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(color: Colors.red, width: 10, height: 10),
    );

    return Center(
        child: Container(
      color: Colors.red,
      child: Container(
          margin: const EdgeInsets.all(20.0),
          color: Colors.green,
          width: 30,
          height: 30),
    ));

    return Center(
        child: Container(
      color: Colors.red,
      child: Container(color: Colors.green, width: 30, height: 30),
    ));

    return Center(child: Container(color: Colors.blue));

    return Center(
        child: Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
    ));

    return Align(
      alignment: Alignment.bottomRight,
      child: Container(width: 100, height: 100, color: Colors.red),
    );

    return Center(
        child: Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ));

    return Container(width: 100, height: 100, color: Colors.orange);

    return Container(color: Colors.red);
  }
}
