// ignore_for_file: must_be_immutable

part of 'frame_twentyseven_bloc.dart';

/// Represents the state of FrameTwentyseven in the application.
class FrameTwentysevenState extends Equatable {
  FrameTwentysevenState({this.frameTwentysevenModelObj});

  FrameTwentysevenModel? frameTwentysevenModelObj;

  @override
  List<Object?> get props => [
        frameTwentysevenModelObj,
      ];
  FrameTwentysevenState copyWith(
      {FrameTwentysevenModel? frameTwentysevenModelObj}) {
    return FrameTwentysevenState(
      frameTwentysevenModelObj:
          frameTwentysevenModelObj ?? this.frameTwentysevenModelObj,
    );
  }
}
