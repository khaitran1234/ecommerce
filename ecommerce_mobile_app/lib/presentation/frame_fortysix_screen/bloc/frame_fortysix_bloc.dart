import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortysix_screen/models/frame_fortysix_model.dart';
part 'frame_fortysix_event.dart';
part 'frame_fortysix_state.dart';

/// A bloc that manages the state of a FrameFortysix according to the event that is dispatched to it.
class FrameFortysixBloc extends Bloc<FrameFortysixEvent, FrameFortysixState> {
  FrameFortysixBloc(FrameFortysixState initialState) : super(initialState) {
    on<FrameFortysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortysixInitialEvent event,
    Emitter<FrameFortysixState> emit,
  ) async {}
}
