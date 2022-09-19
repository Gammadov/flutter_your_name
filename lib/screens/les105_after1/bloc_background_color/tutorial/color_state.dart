part of 'color_bloc.dart';

class ColorState extends Equatable {
  final Color? color;
  const ColorState({required this.color});

  factory ColorState.initial() => ColorState(color: Colors.orange[200]);

  @override
  List<Object?> get props => [color];

  @override
  bool get stringify => true;

  ColorState copyWith({Color? color}){
    return ColorState(color: color ?? this.color);
  }
}