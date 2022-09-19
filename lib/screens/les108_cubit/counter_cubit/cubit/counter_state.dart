part of 'counter_cubit.dart';

class CounterCubitState extends Equatable {
  final int _number;
  get number => _number;

  const CounterCubitState({required int number}): _number = number;

  @override
  List<Object> get props => [number];
}