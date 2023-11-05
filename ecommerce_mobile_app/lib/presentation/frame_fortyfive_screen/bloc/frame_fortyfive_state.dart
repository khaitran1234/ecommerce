// ignore_for_file: must_be_immutable

part of 'frame_fortyfive_bloc.dart';

/// Represents the state of FrameFortyfive in the application.
class FrameFortyfiveState extends Equatable {
  FrameFortyfiveState({this.frameFortyfiveModelObj});

  FrameFortyfiveModel? frameFortyfiveModelObj;

  @override
  List<Object?> get props => [
        frameFortyfiveModelObj,
      ];
  FrameFortyfiveState copyWith({FrameFortyfiveModel? frameFortyfiveModelObj}) {
    return FrameFortyfiveState(
      frameFortyfiveModelObj:
          frameFortyfiveModelObj ?? this.frameFortyfiveModelObj,
    );
  }
}
