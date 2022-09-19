import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'double_colors_event.dart';

part 'double_colors_state.dart';

class DoubleColorsBloc extends Bloc<DoubleColorsEvent, DoubleColorsState> {
  DoubleColorsBloc() : super(DoubleColorsInitial()) {
    on<ChangeColorEvent>((event, emit) {
      state.color == ColorName.orange
          ? emit(DoubleColorsState(color: ColorName.blue))
          : emit(DoubleColorsState(color: ColorName.orange));

      // emit(DoubleColorsState(color: ColorName.blue));
    });
  }
}
