import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_twentyfive_screen/models/frame_twentyfive_model.dart';
part 'frame_twentyfive_event.dart';
part 'frame_twentyfive_state.dart';

/// A bloc that manages the state of a FrameTwentyfive according to the event that is dispatched to it.
class FrameTwentyfiveBloc
    extends Bloc<FrameTwentyfiveEvent, FrameTwentyfiveState> {
  FrameTwentyfiveBloc(FrameTwentyfiveState initialState) : super(initialState) {
    on<FrameTwentyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentyfiveInitialEvent event,
    Emitter<FrameTwentyfiveState> emit,
  ) async {}
}
