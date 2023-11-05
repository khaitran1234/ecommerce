import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fiftyone_screen/models/frame_fiftyone_model.dart';
part 'frame_fiftyone_event.dart';
part 'frame_fiftyone_state.dart';

/// A bloc that manages the state of a FrameFiftyone according to the event that is dispatched to it.
class FrameFiftyoneBloc extends Bloc<FrameFiftyoneEvent, FrameFiftyoneState> {
  FrameFiftyoneBloc(FrameFiftyoneState initialState) : super(initialState) {
    on<FrameFiftyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFiftyoneInitialEvent event,
    Emitter<FrameFiftyoneState> emit,
  ) async {}
}
