import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_your_name/screens/les106/bloc_on_bloc/traffic_light_bloc.dart';
import 'package:flutter_your_name/screens/les106/colors.dart';

class BlocTrafficLight extends StatelessWidget {
  const BlocTrafficLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrafficLightBloc(),
      child: BlocBuilder<TrafficLightBloc, TrafficLightState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: state.color,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: double.infinity, height: 50),
                FloatingActionButton(
                  elevation: 12,
                  backgroundColor: AppColors.redButton,
                  onPressed: () {
                    context.read<TrafficLightBloc>().add(
                        const TrafficLightEvent(
                            color: AppColors.redBackground));
                  },
                ),
                FloatingActionButton(
                  elevation: 12,
                  backgroundColor: AppColors.yellowButton,
                  onPressed: () {
                    context.read<TrafficLightBloc>().add(
                        const TrafficLightEvent(
                            color: AppColors.yellowBackground));
                  },
                ),
                FloatingActionButton(
                  elevation: 12,
                  backgroundColor: AppColors.greenButton,
                  onPressed: () {
                    context.read<TrafficLightBloc>().add(
                        const TrafficLightEvent(
                            color: AppColors.greenBackground));
                  },
                ),
                const SizedBox(height: 200),
              ],
            ),
          );
        },
      ),
    );
  }
}
