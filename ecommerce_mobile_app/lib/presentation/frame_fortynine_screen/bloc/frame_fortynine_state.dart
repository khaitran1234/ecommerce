// ignore_for_file: must_be_immutable

part of 'frame_fortynine_bloc.dart';

/// Represents the state of FrameFortynine in the application.
class FrameFortynineState extends Equatable {
  FrameFortynineState({this.frameFortynineModelObj});

  FrameFortynineModel? frameFortynineModelObj;

  @override
  List<Object?> get props => [
        frameFortynineModelObj,
      ];
  FrameFortynineState copyWith({FrameFortynineModel? frameFortynineModelObj}) {
    return FrameFortynineState(
      frameFortynineModelObj:
          frameFortynineModelObj ?? this.frameFortynineModelObj,
    );
  }
}
