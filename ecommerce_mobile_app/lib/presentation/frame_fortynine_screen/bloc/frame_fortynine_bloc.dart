import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortynine_screen/models/frame_fortynine_model.dart';
part 'frame_fortynine_event.dart';
part 'frame_fortynine_state.dart';

/// A bloc that manages the state of a FrameFortynine according to the event that is dispatched to it.
class FrameFortynineBloc
    extends Bloc<FrameFortynineEvent, FrameFortynineState> {
  FrameFortynineBloc(FrameFortynineState initialState) : super(initialState) {
    on<FrameFortynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortynineInitialEvent event,
    Emitter<FrameFortynineState> emit,
  ) async {}
}
