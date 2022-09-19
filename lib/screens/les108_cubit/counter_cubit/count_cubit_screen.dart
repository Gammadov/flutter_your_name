import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_your_name/screens/les108_cubit/counter_cubit/cubit/counter_cubit.dart';

class CountCubitScreen extends StatelessWidget {
  const CountCubitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(start: 0),
      child: BlocBuilder<CounterCubit, CounterCubitState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white70,
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: const Color(0xff72776c),
                    height: 100,
                    width: 100,
                    child: MaterialButton(
                      child:
                          const Icon(Icons.add, size: 50, color: Color(0xff444741)),
                      onPressed: () {
                        context.read<CounterCubit>().increment();
                      },
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(
                        state.number.toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          color: Color(0xff444741),
                        ),
                      ),
                  ),
                  Container(
                    color: const Color(0xff72776c),
                    height: 100,
                    width: 100,
                    child: MaterialButton(
                      child: const Icon(Icons.remove,
                          size: 50, color: Color(0xff444741)),
                      onPressed: () {
                        context.read<CounterCubit>().decrement();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
