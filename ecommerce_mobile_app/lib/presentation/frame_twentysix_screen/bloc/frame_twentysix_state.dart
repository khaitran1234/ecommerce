// ignore_for_file: must_be_immutable

part of 'frame_twentysix_bloc.dart';

/// Represents the state of FrameTwentysix in the application.
class FrameTwentysixState extends Equatable {
  FrameTwentysixState({this.frameTwentysixModelObj});

  FrameTwentysixModel? frameTwentysixModelObj;

  @override
  List<Object?> get props => [
        frameTwentysixModelObj,
      ];
  FrameTwentysixState copyWith({FrameTwentysixModel? frameTwentysixModelObj}) {
    return FrameTwentysixState(
      frameTwentysixModelObj:
          frameTwentysixModelObj ?? this.frameTwentysixModelObj,
    );
  }
}
