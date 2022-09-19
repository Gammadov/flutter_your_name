part of 'double_colors_bloc.dart';

class ColorName{
  static final Color? orange = Colors.orange[200];
  static final Color? blue = Colors.blue[200];
}

class DoubleColorsState extends Equatable {
  final Color? _color;

  const DoubleColorsState({required Color? color}) : _color = color;

  Color? get color => _color;

  @override
  List<Object?> get props => [_color];

  @override
  bool get stringify => true;

  DoubleColorsState copyWith({required Color? color}) {
    return DoubleColorsState(color: color);
  }
}

class DoubleColorsInitial extends DoubleColorsState {
  DoubleColorsInitial() : super(color: ColorName.orange);
}
