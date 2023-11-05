// ignore_for_file: must_be_immutable

part of 'frame_thirtyeight_bloc.dart';

/// Represents the state of FrameThirtyeight in the application.
class FrameThirtyeightState extends Equatable {
  FrameThirtyeightState({this.frameThirtyeightModelObj});

  FrameThirtyeightModel? frameThirtyeightModelObj;

  @override
  List<Object?> get props => [
        frameThirtyeightModelObj,
      ];
  FrameThirtyeightState copyWith(
      {FrameThirtyeightModel? frameThirtyeightModelObj}) {
    return FrameThirtyeightState(
      frameThirtyeightModelObj:
          frameThirtyeightModelObj ?? this.frameThirtyeightModelObj,
    );
  }
}
