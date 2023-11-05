import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtynine_screen/models/frame_thirtynine_model.dart';
part 'frame_thirtynine_event.dart';
part 'frame_thirtynine_state.dart';

/// A bloc that manages the state of a FrameThirtynine according to the event that is dispatched to it.
class FrameThirtynineBloc
    extends Bloc<FrameThirtynineEvent, FrameThirtynineState> {
  FrameThirtynineBloc(FrameThirtynineState initialState) : super(initialState) {
    on<FrameThirtynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtynineInitialEvent event,
    Emitter<FrameThirtynineState> emit,
  ) async {}
}
