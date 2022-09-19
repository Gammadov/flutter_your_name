part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int _number;
  get number => _number;

  const CounterState({required int number}): _number = number;

  @override
  List<Object> get props => [number];
}