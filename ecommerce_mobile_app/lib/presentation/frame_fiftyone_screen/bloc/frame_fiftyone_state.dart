// ignore_for_file: must_be_immutable

part of 'frame_fiftyone_bloc.dart';

/// Represents the state of FrameFiftyone in the application.
class FrameFiftyoneState extends Equatable {
  FrameFiftyoneState({this.frameFiftyoneModelObj});

  FrameFiftyoneModel? frameFiftyoneModelObj;

  @override
  List<Object?> get props => [
        frameFiftyoneModelObj,
      ];
  FrameFiftyoneState copyWith({FrameFiftyoneModel? frameFiftyoneModelObj}) {
    return FrameFiftyoneState(
      frameFiftyoneModelObj:
          frameFiftyoneModelObj ?? this.frameFiftyoneModelObj,
    );
  }
}
