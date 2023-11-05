// ignore_for_file: must_be_immutable

part of 'frame_thirtytwo_bloc.dart';

/// Represents the state of FrameThirtytwo in the application.
class FrameThirtytwoState extends Equatable {
  FrameThirtytwoState({this.frameThirtytwoModelObj});

  FrameThirtytwoModel? frameThirtytwoModelObj;

  @override
  List<Object?> get props => [
        frameThirtytwoModelObj,
      ];
  FrameThirtytwoState copyWith({FrameThirtytwoModel? frameThirtytwoModelObj}) {
    return FrameThirtytwoState(
      frameThirtytwoModelObj:
          frameThirtytwoModelObj ?? this.frameThirtytwoModelObj,
    );
  }
}
