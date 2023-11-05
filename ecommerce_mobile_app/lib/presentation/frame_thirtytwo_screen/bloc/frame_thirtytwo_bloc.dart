import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtytwo_screen/models/frame_thirtytwo_model.dart';
part 'frame_thirtytwo_event.dart';
part 'frame_thirtytwo_state.dart';

/// A bloc that manages the state of a FrameThirtytwo according to the event that is dispatched to it.
class FrameThirtytwoBloc
    extends Bloc<FrameThirtytwoEvent, FrameThirtytwoState> {
  FrameThirtytwoBloc(FrameThirtytwoState initialState) : super(initialState) {
    on<FrameThirtytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtytwoInitialEvent event,
    Emitter<FrameThirtytwoState> emit,
  ) async {}
}
