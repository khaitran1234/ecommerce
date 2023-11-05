import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_twentynine_screen/models/frame_twentynine_model.dart';
part 'frame_twentynine_event.dart';
part 'frame_twentynine_state.dart';

/// A bloc that manages the state of a FrameTwentynine according to the event that is dispatched to it.
class FrameTwentynineBloc
    extends Bloc<FrameTwentynineEvent, FrameTwentynineState> {
  FrameTwentynineBloc(FrameTwentynineState initialState) : super(initialState) {
    on<FrameTwentynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentynineInitialEvent event,
    Emitter<FrameTwentynineState> emit,
  ) async {}
}
