import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_twentyfour_screen/models/frame_twentyfour_model.dart';
part 'frame_twentyfour_event.dart';
part 'frame_twentyfour_state.dart';

/// A bloc that manages the state of a FrameTwentyfour according to the event that is dispatched to it.
class FrameTwentyfourBloc
    extends Bloc<FrameTwentyfourEvent, FrameTwentyfourState> {
  FrameTwentyfourBloc(FrameTwentyfourState initialState) : super(initialState) {
    on<FrameTwentyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentyfourInitialEvent event,
    Emitter<FrameTwentyfourState> emit,
  ) async {}
}
