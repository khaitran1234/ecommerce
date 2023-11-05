import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_three_screen/models/frame_three_model.dart';
part 'frame_three_event.dart';
part 'frame_three_state.dart';

/// A bloc that manages the state of a FrameThree according to the event that is dispatched to it.
class FrameThreeBloc extends Bloc<FrameThreeEvent, FrameThreeState> {
  FrameThreeBloc(FrameThreeState initialState) : super(initialState) {
    on<FrameThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThreeInitialEvent event,
    Emitter<FrameThreeState> emit,
  ) async {}
}
