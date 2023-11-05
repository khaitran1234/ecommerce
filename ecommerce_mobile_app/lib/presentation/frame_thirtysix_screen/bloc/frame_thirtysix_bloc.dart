import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/frame_thirtysix_screen/models/frame_thirtysix_model.dart';
part 'frame_thirtysix_event.dart';
part 'frame_thirtysix_state.dart';

/// A bloc that manages the state of a FrameThirtysix according to the event that is dispatched to it.
class FrameThirtysixBloc
    extends Bloc<FrameThirtysixEvent, FrameThirtysixState> {
  FrameThirtysixBloc(FrameThirtysixState initialState) : super(initialState) {
    on<FrameThirtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtysixInitialEvent event,
    Emitter<FrameThirtysixState> emit,
  ) async {}
}
