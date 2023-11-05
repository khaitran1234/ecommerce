import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortyeight_screen/models/frame_fortyeight_model.dart';
part 'frame_fortyeight_event.dart';
part 'frame_fortyeight_state.dart';

/// A bloc that manages the state of a FrameFortyeight according to the event that is dispatched to it.
class FrameFortyeightBloc
    extends Bloc<FrameFortyeightEvent, FrameFortyeightState> {
  FrameFortyeightBloc(FrameFortyeightState initialState) : super(initialState) {
    on<FrameFortyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortyeightInitialEvent event,
    Emitter<FrameFortyeightState> emit,
  ) async {}
}
