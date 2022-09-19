import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  int _count;

  CounterCubit({required int start})
      : _count = start,
        super(CounterCubitState(number: start));

  void increment() => emit(CounterCubitState(number: _count += 1));
  void decrement() => emit(CounterCubitState(number: _count -= 1));
}
