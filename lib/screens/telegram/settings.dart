import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/telegram/widgets/my_row_panel.dart';

class TelegramSettings extends StatelessWidget {
  const TelegramSettings({Key? key}) : super(key: key);

  Widget myRow(
      {required IconData icon, required Color color, required String text}) {
    return Row(
      children: [
        Icon(icon, color: color, size: 60),
        const SizedBox(width: 10),
        Text(text, style: const TextStyle(fontSize: 25)),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rowPanel = [
      myRow(icon: Icons.bookmark, color: Colors.blue, text: 'Saved messages'),
      const Divider(thickness: 1),
      myRow(icon: Icons.call, color: Colors.green, text: 'Recent calls'),
      const Divider(thickness: 1),
      myRow(icon: Icons.devices, color: Colors.orange, text: 'Devices'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram settings screen'),
      ),
      backgroundColor: const Color(0xFFF1F0F6),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Icon(Icons.face, size: 200),
            const SizedBox(height: 50),
            const Text('Name Surname', style: TextStyle(fontSize: 40)),
            const SizedBox(height: 50),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: rowPanel),
              // child: MyRowPanel(),
            )
          ],
        ),
      ),
    );
  }
}
