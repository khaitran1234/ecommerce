// ignore_for_file: must_be_immutable

part of 'frame_fortyone_bloc.dart';

/// Represents the state of FrameFortyone in the application.
class FrameFortyoneState extends Equatable {
  FrameFortyoneState({this.frameFortyoneModelObj});

  FrameFortyoneModel? frameFortyoneModelObj;

  @override
  List<Object?> get props => [
        frameFortyoneModelObj,
      ];
  FrameFortyoneState copyWith({FrameFortyoneModel? frameFortyoneModelObj}) {
    return FrameFortyoneState(
      frameFortyoneModelObj:
          frameFortyoneModelObj ?? this.frameFortyoneModelObj,
    );
  }
}
