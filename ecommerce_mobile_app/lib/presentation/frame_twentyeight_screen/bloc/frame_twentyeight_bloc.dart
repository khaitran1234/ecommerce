import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_twentyeight_screen/models/frame_twentyeight_model.dart';
part 'frame_twentyeight_event.dart';
part 'frame_twentyeight_state.dart';

/// A bloc that manages the state of a FrameTwentyeight according to the event that is dispatched to it.
class FrameTwentyeightBloc
    extends Bloc<FrameTwentyeightEvent, FrameTwentyeightState> {
  FrameTwentyeightBloc(FrameTwentyeightState initialState)
      : super(initialState) {
    on<FrameTwentyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentyeightInitialEvent event,
    Emitter<FrameTwentyeightState> emit,
  ) async {}
}
