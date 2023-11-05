// ignore_for_file: must_be_immutable

part of 'frame_thirtythree_bloc.dart';

/// Represents the state of FrameThirtythree in the application.
class FrameThirtythreeState extends Equatable {
  FrameThirtythreeState({this.frameThirtythreeModelObj});

  FrameThirtythreeModel? frameThirtythreeModelObj;

  @override
  List<Object?> get props => [
        frameThirtythreeModelObj,
      ];
  FrameThirtythreeState copyWith(
      {FrameThirtythreeModel? frameThirtythreeModelObj}) {
    return FrameThirtythreeState(
      frameThirtythreeModelObj:
          frameThirtythreeModelObj ?? this.frameThirtythreeModelObj,
    );
  }
}
