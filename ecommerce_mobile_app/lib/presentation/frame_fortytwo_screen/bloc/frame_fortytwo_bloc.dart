import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortytwo_screen/models/frame_fortytwo_model.dart';
part 'frame_fortytwo_event.dart';
part 'frame_fortytwo_state.dart';

/// A bloc that manages the state of a FrameFortytwo according to the event that is dispatched to it.
class FrameFortytwoBloc extends Bloc<FrameFortytwoEvent, FrameFortytwoState> {
  FrameFortytwoBloc(FrameFortytwoState initialState) : super(initialState) {
    on<FrameFortytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortytwoInitialEvent event,
    Emitter<FrameFortytwoState> emit,
  ) async {}
}
