import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_twentyseven_screen/models/frame_twentyseven_model.dart';
part 'frame_twentyseven_event.dart';
part 'frame_twentyseven_state.dart';

/// A bloc that manages the state of a FrameTwentyseven according to the event that is dispatched to it.
class FrameTwentysevenBloc
    extends Bloc<FrameTwentysevenEvent, FrameTwentysevenState> {
  FrameTwentysevenBloc(FrameTwentysevenState initialState)
      : super(initialState) {
    on<FrameTwentysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentysevenInitialEvent event,
    Emitter<FrameTwentysevenState> emit,
  ) async {}
}
