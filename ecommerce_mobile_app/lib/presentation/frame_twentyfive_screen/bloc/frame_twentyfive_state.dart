// ignore_for_file: must_be_immutable

part of 'frame_twentyfive_bloc.dart';

/// Represents the state of FrameTwentyfive in the application.
class FrameTwentyfiveState extends Equatable {
  FrameTwentyfiveState({this.frameTwentyfiveModelObj});

  FrameTwentyfiveModel? frameTwentyfiveModelObj;

  @override
  List<Object?> get props => [
        frameTwentyfiveModelObj,
      ];
  FrameTwentyfiveState copyWith(
      {FrameTwentyfiveModel? frameTwentyfiveModelObj}) {
    return FrameTwentyfiveState(
      frameTwentyfiveModelObj:
          frameTwentyfiveModelObj ?? this.frameTwentyfiveModelObj,
    );
  }
}
