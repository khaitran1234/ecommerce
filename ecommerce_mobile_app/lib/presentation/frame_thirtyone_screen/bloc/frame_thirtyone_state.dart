// ignore_for_file: must_be_immutable

part of 'frame_thirtyone_bloc.dart';

/// Represents the state of FrameThirtyone in the application.
class FrameThirtyoneState extends Equatable {
  FrameThirtyoneState({this.frameThirtyoneModelObj});

  FrameThirtyoneModel? frameThirtyoneModelObj;

  @override
  List<Object?> get props => [
        frameThirtyoneModelObj,
      ];
  FrameThirtyoneState copyWith({FrameThirtyoneModel? frameThirtyoneModelObj}) {
    return FrameThirtyoneState(
      frameThirtyoneModelObj:
          frameThirtyoneModelObj ?? this.frameThirtyoneModelObj,
    );
  }
}
