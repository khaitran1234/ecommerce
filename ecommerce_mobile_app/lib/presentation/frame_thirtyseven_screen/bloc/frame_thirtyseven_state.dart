// ignore_for_file: must_be_immutable

part of 'frame_thirtyseven_bloc.dart';

/// Represents the state of FrameThirtyseven in the application.
class FrameThirtysevenState extends Equatable {
  FrameThirtysevenState({this.frameThirtysevenModelObj});

  FrameThirtysevenModel? frameThirtysevenModelObj;

  @override
  List<Object?> get props => [
        frameThirtysevenModelObj,
      ];
  FrameThirtysevenState copyWith(
      {FrameThirtysevenModel? frameThirtysevenModelObj}) {
    return FrameThirtysevenState(
      frameThirtysevenModelObj:
          frameThirtysevenModelObj ?? this.frameThirtysevenModelObj,
    );
  }
}
