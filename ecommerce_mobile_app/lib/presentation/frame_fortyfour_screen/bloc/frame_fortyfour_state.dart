// ignore_for_file: must_be_immutable

part of 'frame_fortyfour_bloc.dart';

/// Represents the state of FrameFortyfour in the application.
class FrameFortyfourState extends Equatable {
  FrameFortyfourState({this.frameFortyfourModelObj});

  FrameFortyfourModel? frameFortyfourModelObj;

  @override
  List<Object?> get props => [
        frameFortyfourModelObj,
      ];
  FrameFortyfourState copyWith({FrameFortyfourModel? frameFortyfourModelObj}) {
    return FrameFortyfourState(
      frameFortyfourModelObj:
          frameFortyfourModelObj ?? this.frameFortyfourModelObj,
    );
  }
}
