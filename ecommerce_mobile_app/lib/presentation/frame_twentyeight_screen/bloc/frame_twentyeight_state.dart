// ignore_for_file: must_be_immutable

part of 'frame_twentyeight_bloc.dart';

/// Represents the state of FrameTwentyeight in the application.
class FrameTwentyeightState extends Equatable {
  FrameTwentyeightState({this.frameTwentyeightModelObj});

  FrameTwentyeightModel? frameTwentyeightModelObj;

  @override
  List<Object?> get props => [
        frameTwentyeightModelObj,
      ];
  FrameTwentyeightState copyWith(
      {FrameTwentyeightModel? frameTwentyeightModelObj}) {
    return FrameTwentyeightState(
      frameTwentyeightModelObj:
          frameTwentyeightModelObj ?? this.frameTwentyeightModelObj,
    );
  }
}
