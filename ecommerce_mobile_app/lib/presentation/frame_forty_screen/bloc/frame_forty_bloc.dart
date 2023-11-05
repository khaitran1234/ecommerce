import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_forty_screen/models/frame_forty_model.dart';
part 'frame_forty_event.dart';
part 'frame_forty_state.dart';

/// A bloc that manages the state of a FrameForty according to the event that is dispatched to it.
class FrameFortyBloc extends Bloc<FrameFortyEvent, FrameFortyState> {
  FrameFortyBloc(FrameFortyState initialState) : super(initialState) {
    on<FrameFortyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortyInitialEvent event,
    Emitter<FrameFortyState> emit,
  ) async {}
}
