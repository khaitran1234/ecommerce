import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtythree_screen/models/frame_thirtythree_model.dart';
part 'frame_thirtythree_event.dart';
part 'frame_thirtythree_state.dart';

/// A bloc that manages the state of a FrameThirtythree according to the event that is dispatched to it.
class FrameThirtythreeBloc
    extends Bloc<FrameThirtythreeEvent, FrameThirtythreeState> {
  FrameThirtythreeBloc(FrameThirtythreeState initialState)
      : super(initialState) {
    on<FrameThirtythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtythreeInitialEvent event,
    Emitter<FrameThirtythreeState> emit,
  ) async {}
}
