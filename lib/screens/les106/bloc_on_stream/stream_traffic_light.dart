import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les106/colors.dart';
import 'package:flutter_your_name/screens/les106/bloc_on_stream/stream_bloc.dart';

class StreamTrafficLight extends StatefulWidget {
  const StreamTrafficLight({Key? key}) : super(key: key);

  @override
  State<StreamTrafficLight> createState() => _StreamTrafficLightState();
}

class _StreamTrafficLightState extends State<StreamTrafficLight> {
  Color? color = AppColors.greenBackground;

  final StreamBloc bloc = StreamBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: StreamBlocStates.initial(),
        stream: bloc.stateStream,
        builder: (context, AsyncSnapshot<StreamBlocStates> snapshot) {
          return Scaffold(
            backgroundColor: snapshot.data!.color,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: double.infinity, height: 50),
                FloatingActionButton(
                  elevation: 12,
                  backgroundColor: AppColors.redButton,
                  onPressed: () {
                    bloc.eventSink
                        .add(StreamColorEvent(color: AppColors.redBackground));
                  },
                ),
                FloatingActionButton(
                  elevation: 12,
                  backgroundColor: AppColors.yellowButton,
                  onPressed: () {
                    bloc.eventSink
                        .add(StreamColorEvent(color: AppColors.yellowBackground));
                  },
                ),
                FloatingActionButton(
                  elevation: 12,
                  backgroundColor: AppColors.greenButton,
                  onPressed: () {
                    bloc.eventSink.add(
                        StreamColorEvent(color: AppColors.greenBackground));
                  },
                ),
                const SizedBox(height: 200),
              ],
            ),
          );
        });

    return Scaffold(
      backgroundColor: color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: double.infinity, height: 200),
          FloatingActionButton(
            elevation: 12,
            backgroundColor: AppColors.redButton,
            onPressed: () {
              color = AppColors.redBackground;
              setState(() {});
            },
          ),
          FloatingActionButton(
            elevation: 12,
            backgroundColor: AppColors.yellowButton,
            onPressed: () {
              color = AppColors.yellowBackground;
              setState(() {});
            },
          ),
          FloatingActionButton(
            elevation: 12,
            backgroundColor: AppColors.greenButton,
            onPressed: () {
              color = AppColors.greenBackground;
              setState(() {});
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
