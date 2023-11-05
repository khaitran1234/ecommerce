import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_fortythree_screen/models/frame_fortythree_model.dart';
part 'frame_fortythree_event.dart';
part 'frame_fortythree_state.dart';

/// A bloc that manages the state of a FrameFortythree according to the event that is dispatched to it.
class FrameFortythreeBloc
    extends Bloc<FrameFortythreeEvent, FrameFortythreeState> {
  FrameFortythreeBloc(FrameFortythreeState initialState) : super(initialState) {
    on<FrameFortythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFortythreeInitialEvent event,
    Emitter<FrameFortythreeState> emit,
  ) async {}
}
