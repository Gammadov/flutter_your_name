import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridTiles extends StatelessWidget {
  const GridTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 4,
    //   crossAxisSpacing: 20,
    //   mainAxisSpacing: 40,
    //   children: const [
    //     TextTile(text: '1'),
    //     TextTile(text: '2'),
    //     TextTile(text: '3'),
    //     TextTile(text: '4'),
    //     TextTile(text: '5'),
    //     TextTile(text: '6'),
    //     TextTile(text: '7'),
    //   ],
    // );

    return GridView.builder(
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
      ),
      itemBuilder: (context, index) {
        return TextTile(text: '${index + 1}');
      },
    );

    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
      ),
      padding: const EdgeInsets.all(10),
      children: const [
        TextTile(text: '1'),
        TextTile(text: '2'),
        TextTile(text: '3'),
        TextTile(text: '4'),
        TextTile(text: '5'),
        TextTile(text: '6'),
        TextTile(text: '7'),
      ],
    );
  }
}

class TextTile extends StatelessWidget {
  final String text;

  const TextTile({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(20)),
        child: Text(text, style: const TextStyle(fontSize: 40)));
  }
}
