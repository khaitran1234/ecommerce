import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_twentythree_screen/models/frame_twentythree_model.dart';
part 'frame_twentythree_event.dart';
part 'frame_twentythree_state.dart';

/// A bloc that manages the state of a FrameTwentythree according to the event that is dispatched to it.
class FrameTwentythreeBloc
    extends Bloc<FrameTwentythreeEvent, FrameTwentythreeState> {
  FrameTwentythreeBloc(FrameTwentythreeState initialState)
      : super(initialState) {
    on<FrameTwentythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentythreeInitialEvent event,
    Emitter<FrameTwentythreeState> emit,
  ) async {}
}
