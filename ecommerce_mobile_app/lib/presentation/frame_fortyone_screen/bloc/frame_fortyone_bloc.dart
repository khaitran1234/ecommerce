import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortyone_screen/models/frame_fortyone_model.dart';
part 'frame_fortyone_event.dart';
part 'frame_fortyone_state.dart';

/// A bloc that manages the state of a FrameFortyone according to the event that is dispatched to it.
class FrameFortyoneBloc extends Bloc<FrameFortyoneEvent, FrameFortyoneState> {
  FrameFortyoneBloc(FrameFortyoneState initialState) : super(initialState) {
    on<FrameFortyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortyoneInitialEvent event,
    Emitter<FrameFortyoneState> emit,
  ) async {}
}
