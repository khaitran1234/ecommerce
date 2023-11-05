import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortyfive_screen/models/frame_fortyfive_model.dart';
part 'frame_fortyfive_event.dart';
part 'frame_fortyfive_state.dart';

/// A bloc that manages the state of a FrameFortyfive according to the event that is dispatched to it.
class FrameFortyfiveBloc
    extends Bloc<FrameFortyfiveEvent, FrameFortyfiveState> {
  FrameFortyfiveBloc(FrameFortyfiveState initialState) : super(initialState) {
    on<FrameFortyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortyfiveInitialEvent event,
    Emitter<FrameFortyfiveState> emit,
  ) async {}
}
