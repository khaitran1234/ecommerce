// ignore_for_file: must_be_immutable

part of 'frame_fortyeight_bloc.dart';

/// Represents the state of FrameFortyeight in the application.
class FrameFortyeightState extends Equatable {
  FrameFortyeightState({this.frameFortyeightModelObj});

  FrameFortyeightModel? frameFortyeightModelObj;

  @override
  List<Object?> get props => [
        frameFortyeightModelObj,
      ];
  FrameFortyeightState copyWith(
      {FrameFortyeightModel? frameFortyeightModelObj}) {
    return FrameFortyeightState(
      frameFortyeightModelObj:
          frameFortyeightModelObj ?? this.frameFortyeightModelObj,
    );
  }
}
