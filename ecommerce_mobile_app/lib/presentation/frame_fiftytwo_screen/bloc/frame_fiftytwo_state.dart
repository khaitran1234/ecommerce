// ignore_for_file: must_be_immutable

part of 'frame_fiftytwo_bloc.dart';

/// Represents the state of FrameFiftytwo in the application.
class FrameFiftytwoState extends Equatable {
  FrameFiftytwoState({this.frameFiftytwoModelObj});

  FrameFiftytwoModel? frameFiftytwoModelObj;

  @override
  List<Object?> get props => [
        frameFiftytwoModelObj,
      ];
  FrameFiftytwoState copyWith({FrameFiftytwoModel? frameFiftytwoModelObj}) {
    return FrameFiftytwoState(
      frameFiftytwoModelObj:
          frameFiftytwoModelObj ?? this.frameFiftytwoModelObj,
    );
  }
}
