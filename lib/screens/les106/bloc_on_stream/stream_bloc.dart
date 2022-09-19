import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les106/colors.dart';

class StreamBlocStates {
  final Color? _color;

  Color? get color => _color;

  StreamBlocStates({required Color? color}): _color = color;

  StreamBlocStates.initial() : _color = AppColors.greenBackground;
}

class StreamColorEvent {
  final Color? color;

  StreamColorEvent({required this.color});
}

class StreamBloc {
  final _inputController = StreamController<StreamColorEvent>();
  final _outputController = StreamController<StreamBlocStates>();

  StreamSink<StreamColorEvent> get eventSink => _inputController.sink;

  Stream<StreamBlocStates> get stateStream =>
      _outputController.stream;

  StreamBloc() {
    _inputController.stream.listen(eventHandler);
    _outputController.add(StreamBlocStates.initial());
  }

  void eventHandler(event) {
    if (event is StreamColorEvent) {
        _outputController.add(StreamBlocStates(color: event.color));
    }
  }

  void dispose() {
    _inputController.close();
    _outputController.close();
  }
}
