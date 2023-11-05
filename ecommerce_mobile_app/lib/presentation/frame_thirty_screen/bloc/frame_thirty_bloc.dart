import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirty_screen/models/frame_thirty_model.dart';
part 'frame_thirty_event.dart';
part 'frame_thirty_state.dart';

/// A bloc that manages the state of a FrameThirty according to the event that is dispatched to it.
class FrameThirtyBloc extends Bloc<FrameThirtyEvent, FrameThirtyState> {
  FrameThirtyBloc(FrameThirtyState initialState) : super(initialState) {
    on<FrameThirtyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtyInitialEvent event,
    Emitter<FrameThirtyState> emit,
  ) async {}
}
