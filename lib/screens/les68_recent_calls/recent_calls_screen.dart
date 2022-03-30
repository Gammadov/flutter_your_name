import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les68_recent_calls/call_card.dart';

class RecentCalls extends StatefulWidget {
  const RecentCalls({Key? key}) : super(key: key);

  @override
  State<RecentCalls> createState() => _RecentCallsState();
}

class _RecentCallsState extends State<RecentCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Журнал звонков')),
      body: ListView.separated(
        itemBuilder: (_, int index) => const CallCard(),
        separatorBuilder: (_, int index) => const Padding(
          padding: EdgeInsets.only(left: 55.0),
          child: Divider(thickness: 1),
        ),
        itemCount: 50,
      ),
    );
  }
}


class Some extends StatefulWidget {
  const Some({Key? key}) : super(key: key);

  @override
  State<Some> createState() => _SomeState();
}

class _SomeState extends State<Some> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

