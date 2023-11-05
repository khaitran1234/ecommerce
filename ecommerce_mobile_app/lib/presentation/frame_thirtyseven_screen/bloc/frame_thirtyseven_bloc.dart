import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtyseven_screen/models/frame_thirtyseven_model.dart';
part 'frame_thirtyseven_event.dart';
part 'frame_thirtyseven_state.dart';

/// A bloc that manages the state of a FrameThirtyseven according to the event that is dispatched to it.
class FrameThirtysevenBloc
    extends Bloc<FrameThirtysevenEvent, FrameThirtysevenState> {
  FrameThirtysevenBloc(FrameThirtysevenState initialState)
      : super(initialState) {
    on<FrameThirtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtysevenInitialEvent event,
    Emitter<FrameThirtysevenState> emit,
  ) async {}
}
