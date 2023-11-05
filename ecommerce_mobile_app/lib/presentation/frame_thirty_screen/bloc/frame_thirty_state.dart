// ignore_for_file: must_be_immutable

part of 'frame_thirty_bloc.dart';

/// Represents the state of FrameThirty in the application.
class FrameThirtyState extends Equatable {
  FrameThirtyState({this.frameThirtyModelObj});

  FrameThirtyModel? frameThirtyModelObj;

  @override
  List<Object?> get props => [
        frameThirtyModelObj,
      ];
  FrameThirtyState copyWith({FrameThirtyModel? frameThirtyModelObj}) {
    return FrameThirtyState(
      frameThirtyModelObj: frameThirtyModelObj ?? this.frameThirtyModelObj,
    );
  }
}
