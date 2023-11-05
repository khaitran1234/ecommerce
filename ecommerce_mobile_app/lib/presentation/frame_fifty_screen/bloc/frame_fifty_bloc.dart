import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fifty_screen/models/frame_fifty_model.dart';
part 'frame_fifty_event.dart';
part 'frame_fifty_state.dart';

/// A bloc that manages the state of a FrameFifty according to the event that is dispatched to it.
class FrameFiftyBloc extends Bloc<FrameFiftyEvent, FrameFiftyState> {
  FrameFiftyBloc(FrameFiftyState initialState) : super(initialState) {
    on<FrameFiftyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFiftyInitialEvent event,
    Emitter<FrameFiftyState> emit,
  ) async {}
}
