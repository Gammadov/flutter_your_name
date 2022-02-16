import 'package:flutter/material.dart';

class TelegramSettings2 extends StatelessWidget {
  const TelegramSettings2({Key? key}) : super(key: key);

  Widget myRow({required IconData icon, required Color color, required String text}){
    return Row(children:[
      Icon(icon, color: color, size: 60),
      const SizedBox(width: 10),
      Expanded(child: Text(text, style: const TextStyle(fontSize: 25))),
      const Icon(Icons.arrow_forward_ios, color: Colors.grey),
    ],)
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Telegram settings screen'),),
      backgroundColor: const Color(0xFFF1F0F6),
      body: SizedBox(
        width: double.infinity,
        child: Column(children: [
          const Icon(Icons.face, size: 200),
          const SizedBox(height: 50),
          const Text('Name Surname', style: TextStyle(fontSize: 40)),
          const SizedBox(height: 50),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              children: [
                myRow(icon: Icons.bookmark, color: Colors.blue, text: 'Saved messages'),
                const Divider(thickness: 1),
                myRow(icon: Icons.call, color: Colors.green, text: 'Recent calls'),
                const Divider(thickness: 1),
                myRow(icon: Icons.devices, color: Colors.orange, text: 'Devices'),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}
