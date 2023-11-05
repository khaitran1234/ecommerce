// ignore_for_file: must_be_immutable

part of 'frame_fortytwo_bloc.dart';

/// Represents the state of FrameFortytwo in the application.
class FrameFortytwoState extends Equatable {
  FrameFortytwoState({this.frameFortytwoModelObj});

  FrameFortytwoModel? frameFortytwoModelObj;

  @override
  List<Object?> get props => [
        frameFortytwoModelObj,
      ];
  FrameFortytwoState copyWith({FrameFortytwoModel? frameFortytwoModelObj}) {
    return FrameFortytwoState(
      frameFortytwoModelObj:
          frameFortytwoModelObj ?? this.frameFortytwoModelObj,
    );
  }
}
