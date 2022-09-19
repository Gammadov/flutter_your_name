import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_your_name/screens/les105_after1/bloc_background_color/tutorial/color_bloc.dart';

// https://www.youtube.com/watch?v=drkvsBh2ru8

class ExampleBloc2 extends StatelessWidget {
  const ExampleBloc2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: BlocBuilder<ColorBloc, ColorState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: state.color,
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<ColorBloc>().add(ChangeColorEvent());
                  },
                  child: const Text('Some text'),
                ),
              ),
            );
          },
        ),
    );
  }
}
