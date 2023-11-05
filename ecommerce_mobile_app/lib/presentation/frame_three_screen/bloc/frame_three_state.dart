// ignore_for_file: must_be_immutable

part of 'frame_three_bloc.dart';

/// Represents the state of FrameThree in the application.
class FrameThreeState extends Equatable {
  FrameThreeState({this.frameThreeModelObj});

  FrameThreeModel? frameThreeModelObj;

  @override
  List<Object?> get props => [
        frameThreeModelObj,
      ];
  FrameThreeState copyWith({FrameThreeModel? frameThreeModelObj}) {
    return FrameThreeState(
      frameThreeModelObj: frameThreeModelObj ?? this.frameThreeModelObj,
    );
  }
}
