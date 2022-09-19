part of 'double_colors_bloc.dart';

abstract class DoubleColorsEvent extends Equatable {
  const DoubleColorsEvent();

  @override
  List<Object?> get props => [];
}

class ChangeColorEvent extends DoubleColorsEvent {}

// class ChangeColorEvent extends DoubleColorsEvent{
//   final ColorName color;
//   const ChangeColorEvent({required this.color});
//
//   @override
//   List<Object?> get props => [color];
// }
