// ignore_for_file: must_be_immutable

part of 'frame_thirtyfive_bloc.dart';

/// Represents the state of FrameThirtyfive in the application.
class FrameThirtyfiveState extends Equatable {
  FrameThirtyfiveState({this.frameThirtyfiveModelObj});

  FrameThirtyfiveModel? frameThirtyfiveModelObj;

  @override
  List<Object?> get props => [
        frameThirtyfiveModelObj,
      ];
  FrameThirtyfiveState copyWith(
      {FrameThirtyfiveModel? frameThirtyfiveModelObj}) {
    return FrameThirtyfiveState(
      frameThirtyfiveModelObj:
          frameThirtyfiveModelObj ?? this.frameThirtyfiveModelObj,
    );
  }
}
