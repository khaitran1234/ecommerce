// ignore_for_file: must_be_immutable

part of 'frame_twentythree_bloc.dart';

/// Represents the state of FrameTwentythree in the application.
class FrameTwentythreeState extends Equatable {
  FrameTwentythreeState({this.frameTwentythreeModelObj});

  FrameTwentythreeModel? frameTwentythreeModelObj;

  @override
  List<Object?> get props => [
        frameTwentythreeModelObj,
      ];
  FrameTwentythreeState copyWith(
      {FrameTwentythreeModel? frameTwentythreeModelObj}) {
    return FrameTwentythreeState(
      frameTwentythreeModelObj:
          frameTwentythreeModelObj ?? this.frameTwentythreeModelObj,
    );
  }
}
