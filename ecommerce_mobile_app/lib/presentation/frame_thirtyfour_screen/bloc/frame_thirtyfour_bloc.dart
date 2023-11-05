import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtyfour_screen/models/frame_thirtyfour_model.dart';
part 'frame_thirtyfour_event.dart';
part 'frame_thirtyfour_state.dart';

/// A bloc that manages the state of a FrameThirtyfour according to the event that is dispatched to it.
class FrameThirtyfourBloc
    extends Bloc<FrameThirtyfourEvent, FrameThirtyfourState> {
  FrameThirtyfourBloc(FrameThirtyfourState initialState) : super(initialState) {
    on<FrameThirtyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtyfourInitialEvent event,
    Emitter<FrameThirtyfourState> emit,
  ) async {}
}
