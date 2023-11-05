import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtyone_screen/models/frame_thirtyone_model.dart';
part 'frame_thirtyone_event.dart';
part 'frame_thirtyone_state.dart';

/// A bloc that manages the state of a FrameThirtyone according to the event that is dispatched to it.
class FrameThirtyoneBloc
    extends Bloc<FrameThirtyoneEvent, FrameThirtyoneState> {
  FrameThirtyoneBloc(FrameThirtyoneState initialState) : super(initialState) {
    on<FrameThirtyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtyoneInitialEvent event,
    Emitter<FrameThirtyoneState> emit,
  ) async {}
}
