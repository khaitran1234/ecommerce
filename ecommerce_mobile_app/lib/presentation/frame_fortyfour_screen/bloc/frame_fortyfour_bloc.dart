import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortyfour_screen/models/frame_fortyfour_model.dart';
part 'frame_fortyfour_event.dart';
part 'frame_fortyfour_state.dart';

/// A bloc that manages the state of a FrameFortyfour according to the event that is dispatched to it.
class FrameFortyfourBloc
    extends Bloc<FrameFortyfourEvent, FrameFortyfourState> {
  FrameFortyfourBloc(FrameFortyfourState initialState) : super(initialState) {
    on<FrameFortyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortyfourInitialEvent event,
    Emitter<FrameFortyfourState> emit,
  ) async {}
}
