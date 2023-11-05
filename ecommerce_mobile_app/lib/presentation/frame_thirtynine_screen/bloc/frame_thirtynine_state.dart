// ignore_for_file: must_be_immutable

part of 'frame_thirtynine_bloc.dart';

/// Represents the state of FrameThirtynine in the application.
class FrameThirtynineState extends Equatable {
  FrameThirtynineState({this.frameThirtynineModelObj});

  FrameThirtynineModel? frameThirtynineModelObj;

  @override
  List<Object?> get props => [
        frameThirtynineModelObj,
      ];
  FrameThirtynineState copyWith(
      {FrameThirtynineModel? frameThirtynineModelObj}) {
    return FrameThirtynineState(
      frameThirtynineModelObj:
          frameThirtynineModelObj ?? this.frameThirtynineModelObj,
    );
  }
}
