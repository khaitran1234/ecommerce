import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fiftytwo_screen/models/frame_fiftytwo_model.dart';
part 'frame_fiftytwo_event.dart';
part 'frame_fiftytwo_state.dart';

/// A bloc that manages the state of a FrameFiftytwo according to the event that is dispatched to it.
class FrameFiftytwoBloc extends Bloc<FrameFiftytwoEvent, FrameFiftytwoState> {
  FrameFiftytwoBloc(FrameFiftytwoState initialState) : super(initialState) {
    on<FrameFiftytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFiftytwoInitialEvent event,
    Emitter<FrameFiftytwoState> emit,
  ) async {}
}
