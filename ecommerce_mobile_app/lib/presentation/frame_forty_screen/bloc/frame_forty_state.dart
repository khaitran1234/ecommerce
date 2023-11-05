// ignore_for_file: must_be_immutable

part of 'frame_forty_bloc.dart';

/// Represents the state of FrameForty in the application.
class FrameFortyState extends Equatable {
  FrameFortyState({this.frameFortyModelObj});

  FrameFortyModel? frameFortyModelObj;

  @override
  List<Object?> get props => [
        frameFortyModelObj,
      ];
  FrameFortyState copyWith({FrameFortyModel? frameFortyModelObj}) {
    return FrameFortyState(
      frameFortyModelObj: frameFortyModelObj ?? this.frameFortyModelObj,
    );
  }
}
