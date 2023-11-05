// ignore_for_file: must_be_immutable

part of 'frame_twentyfour_bloc.dart';

/// Represents the state of FrameTwentyfour in the application.
class FrameTwentyfourState extends Equatable {
  FrameTwentyfourState({this.frameTwentyfourModelObj});

  FrameTwentyfourModel? frameTwentyfourModelObj;

  @override
  List<Object?> get props => [
        frameTwentyfourModelObj,
      ];
  FrameTwentyfourState copyWith(
      {FrameTwentyfourModel? frameTwentyfourModelObj}) {
    return FrameTwentyfourState(
      frameTwentyfourModelObj:
          frameTwentyfourModelObj ?? this.frameTwentyfourModelObj,
    );
  }
}
