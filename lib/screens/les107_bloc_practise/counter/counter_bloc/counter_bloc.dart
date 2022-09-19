import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int _count;

  CounterBloc({required int start})
      : _count = start,
        super(CounterState(number: start)) {

    on<Increment>((event, emit) {
      _count += 1;
      emit(CounterState(number: _count));
    });

    on<Decrement>((event, emit) {
      _count -= 1;
      emit(CounterState(number: _count));
    });
  }
}
