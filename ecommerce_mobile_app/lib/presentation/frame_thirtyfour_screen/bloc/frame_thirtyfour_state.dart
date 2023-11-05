// ignore_for_file: must_be_immutable

part of 'frame_thirtyfour_bloc.dart';

/// Represents the state of FrameThirtyfour in the application.
class FrameThirtyfourState extends Equatable {
  FrameThirtyfourState({this.frameThirtyfourModelObj});

  FrameThirtyfourModel? frameThirtyfourModelObj;

  @override
  List<Object?> get props => [
        frameThirtyfourModelObj,
      ];
  FrameThirtyfourState copyWith(
      {FrameThirtyfourModel? frameThirtyfourModelObj}) {
    return FrameThirtyfourState(
      frameThirtyfourModelObj:
          frameThirtyfourModelObj ?? this.frameThirtyfourModelObj,
    );
  }
}
