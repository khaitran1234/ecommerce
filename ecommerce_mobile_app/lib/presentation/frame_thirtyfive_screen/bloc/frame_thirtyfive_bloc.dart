import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtyfive_screen/models/frame_thirtyfive_model.dart';
part 'frame_thirtyfive_event.dart';
part 'frame_thirtyfive_state.dart';

/// A bloc that manages the state of a FrameThirtyfive according to the event that is dispatched to it.
class FrameThirtyfiveBloc
    extends Bloc<FrameThirtyfiveEvent, FrameThirtyfiveState> {
  FrameThirtyfiveBloc(FrameThirtyfiveState initialState) : super(initialState) {
    on<FrameThirtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtyfiveInitialEvent event,
    Emitter<FrameThirtyfiveState> emit,
  ) async {}
}
