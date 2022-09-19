import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_your_name/screens/les105_after1/bloc_background_color/experiments/double_colors_bloc.dart';


class ExampleBloc3 extends StatelessWidget {
  const ExampleBloc3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoubleColorsBloc(),
      child: BlocBuilder<DoubleColorsBloc, DoubleColorsState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: state.color,
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<DoubleColorsBloc>().add(ChangeColorEvent());
                  },
                  child: const Text('Orange or Blue'),
                ),
              ),
            );
          },
        ),
    );
  }
}
