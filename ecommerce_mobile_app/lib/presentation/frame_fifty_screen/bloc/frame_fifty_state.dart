// ignore_for_file: must_be_immutable

part of 'frame_fifty_bloc.dart';

/// Represents the state of FrameFifty in the application.
class FrameFiftyState extends Equatable {
  FrameFiftyState({this.frameFiftyModelObj});

  FrameFiftyModel? frameFiftyModelObj;

  @override
  List<Object?> get props => [
        frameFiftyModelObj,
      ];
  FrameFiftyState copyWith({FrameFiftyModel? frameFiftyModelObj}) {
    return FrameFiftyState(
      frameFiftyModelObj: frameFiftyModelObj ?? this.frameFiftyModelObj,
    );
  }
}
