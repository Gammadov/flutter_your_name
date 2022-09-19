part of 'traffic_light_bloc.dart';

class TrafficLightState extends Equatable {
  final Color? _color;
  Color? get color => _color;

  const TrafficLightState({required Color? color}): _color = color;
  const TrafficLightState.initial() : _color = AppColors.greenBackground;

  @override
  List<Object?> get props => [color];

  TrafficLightState copyWith({required Color? color}) {
    return TrafficLightState(color: color);
  }
}
