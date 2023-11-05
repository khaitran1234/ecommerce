// ignore_for_file: must_be_immutable

part of 'frame_fortythree_bloc.dart';

/// Represents the state of FrameFortythree in the application.
class FrameFortythreeState extends Equatable {
  FrameFortythreeState({this.frameFortythreeModelObj});

  FrameFortythreeModel? frameFortythreeModelObj;

  @override
  List<Object?> get props => [
        frameFortythreeModelObj,
      ];
  FrameFortythreeState copyWith(
      {FrameFortythreeModel? frameFortythreeModelObj}) {
    return FrameFortythreeState(
      frameFortythreeModelObj:
          frameFortythreeModelObj ?? this.frameFortythreeModelObj,
    );
  }
}
