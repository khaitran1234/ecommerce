// ignore_for_file: must_be_immutable

part of 'frame_fortysix_bloc.dart';

/// Represents the state of FrameFortysix in the application.
class FrameFortysixState extends Equatable {
  FrameFortysixState({this.frameFortysixModelObj});

  FrameFortysixModel? frameFortysixModelObj;

  @override
  List<Object?> get props => [
        frameFortysixModelObj,
      ];
  FrameFortysixState copyWith({FrameFortysixModel? frameFortysixModelObj}) {
    return FrameFortysixState(
      frameFortysixModelObj:
          frameFortysixModelObj ?? this.frameFortysixModelObj,
    );
  }
}
