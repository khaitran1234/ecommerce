import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtyeight_screen/models/frame_thirtyeight_model.dart';
part 'frame_thirtyeight_event.dart';
part 'frame_thirtyeight_state.dart';

/// A bloc that manages the state of a FrameThirtyeight according to the event that is dispatched to it.
class FrameThirtyeightBloc
    extends Bloc<FrameThirtyeightEvent, FrameThirtyeightState> {
  FrameThirtyeightBloc(FrameThirtyeightState initialState)
      : super(initialState) {
    on<FrameThirtyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtyeightInitialEvent event,
    Emitter<FrameThirtyeightState> emit,
  ) async {}
}
