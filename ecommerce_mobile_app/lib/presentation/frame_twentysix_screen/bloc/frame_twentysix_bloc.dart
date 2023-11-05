import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_twentysix_screen/models/frame_twentysix_model.dart';
part 'frame_twentysix_event.dart';
part 'frame_twentysix_state.dart';

/// A bloc that manages the state of a FrameTwentysix according to the event that is dispatched to it.
class FrameTwentysixBloc
    extends Bloc<FrameTwentysixEvent, FrameTwentysixState> {
  FrameTwentysixBloc(FrameTwentysixState initialState) : super(initialState) {
    on<FrameTwentysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentysixInitialEvent event,
    Emitter<FrameTwentysixState> emit,
  ) async {}
}
