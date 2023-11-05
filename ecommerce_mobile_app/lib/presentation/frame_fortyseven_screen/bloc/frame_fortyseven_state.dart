// ignore_for_file: must_be_immutable

part of 'frame_fortyseven_bloc.dart';

/// Represents the state of FrameFortyseven in the application.
class FrameFortysevenState extends Equatable {
  FrameFortysevenState({this.frameFortysevenModelObj});

  FrameFortysevenModel? frameFortysevenModelObj;

  @override
  List<Object?> get props => [
        frameFortysevenModelObj,
      ];
  FrameFortysevenState copyWith(
      {FrameFortysevenModel? frameFortysevenModelObj}) {
    return FrameFortysevenState(
      frameFortysevenModelObj:
          frameFortysevenModelObj ?? this.frameFortysevenModelObj,
    );
  }
}
