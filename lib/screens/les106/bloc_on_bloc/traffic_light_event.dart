part of 'traffic_light_bloc.dart';

class TrafficLightEvent extends Equatable {
  final Color? color;

  const TrafficLightEvent({required this.color});

  @override
  List<Object?> get props => [color];
}
