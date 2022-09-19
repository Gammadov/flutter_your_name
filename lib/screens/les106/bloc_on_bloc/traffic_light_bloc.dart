import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les106/colors.dart';

part 'traffic_light_event.dart';
part 'traffic_light_state.dart';

class TrafficLightBloc extends Bloc<TrafficLightEvent, TrafficLightState> {
  TrafficLightBloc() : super(const TrafficLightState.initial()) {
    on<TrafficLightEvent>((event, emit) {
      // TODO: implement event handler
      emit(TrafficLightState(color: event.color));
    });
  }
}
