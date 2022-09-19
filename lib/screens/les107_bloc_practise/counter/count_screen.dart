import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc/counter_bloc.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(start: 0),
      child: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xff72776c),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: const Color(0xff444741),
                  height: 100,
                  width: 100,
                  child: MaterialButton(
                    child:
                        const Icon(Icons.add, size: 50, color: Colors.white70),
                    onPressed: () {
                      context.read<CounterBloc>().add(Increment());
                    },
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    state.number.toString(),
                    style: const TextStyle(fontSize: 50, color: Colors.white70),
                  ),
                ),
                Container(
                  color: const Color(0xff444741),
                  height: 100,
                  width: 100,
                  child: MaterialButton(
                    child: const Icon(Icons.remove,
                        size: 50, color: Colors.white70),
                    onPressed: () {
                      context.read<CounterBloc>().add(Decrement());
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
