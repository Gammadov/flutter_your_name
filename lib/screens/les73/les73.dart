import 'package:flutter/material.dart';

class Lamp extends StatefulWidget {
  const Lamp({Key? key}) : super(key: key);

  @override
  _LampState createState() => _LampState();
}

class _LampState extends State<Lamp> {
  Color color = Colors.grey;
  String text = 'Включить';
  bool knopka = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          child: Column(
            children: [
              Icon(Icons.lightbulb, size: 150, color: color,),
              OutlinedButton(
                onPressed: (){
                  setState(() {
                    knopka = !knopka;
                    if (knopka) {
                      color = Colors.yellow;
                      text = 'Выключить';
                    }
                    else{
                      color = Colors.grey;
                      text = 'Включить';
                    }
                  });
                },
                child: Text(text, style: const TextStyle(fontSize: 50)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
