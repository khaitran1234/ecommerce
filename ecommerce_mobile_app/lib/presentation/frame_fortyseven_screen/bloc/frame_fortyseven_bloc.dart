import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortyseven_screen/models/frame_fortyseven_model.dart';
part 'frame_fortyseven_event.dart';
part 'frame_fortyseven_state.dart';

/// A bloc that manages the state of a FrameFortyseven according to the event that is dispatched to it.
class FrameFortysevenBloc
    extends Bloc<FrameFortysevenEvent, FrameFortysevenState> {
  FrameFortysevenBloc(FrameFortysevenState initialState) : super(initialState) {
    on<FrameFortysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortysevenInitialEvent event,
    Emitter<FrameFortysevenState> emit,
  ) async {}
}
