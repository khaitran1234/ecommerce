// ignore_for_file: must_be_immutable

part of 'frame_twentynine_bloc.dart';

/// Represents the state of FrameTwentynine in the application.
class FrameTwentynineState extends Equatable {
  FrameTwentynineState({this.frameTwentynineModelObj});

  FrameTwentynineModel? frameTwentynineModelObj;

  @override
  List<Object?> get props => [
        frameTwentynineModelObj,
      ];
  FrameTwentynineState copyWith(
      {FrameTwentynineModel? frameTwentynineModelObj}) {
    return FrameTwentynineState(
      frameTwentynineModelObj:
          frameTwentynineModelObj ?? this.frameTwentynineModelObj,
    );
  }
}
