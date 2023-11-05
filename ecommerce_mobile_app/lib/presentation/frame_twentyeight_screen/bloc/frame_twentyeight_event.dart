// ignore_for_file: must_be_immutable

part of 'frame_twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentyeightEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentyeight widget is first created.
class FrameTwentyeightInitialEvent extends FrameTwentyeightEvent {
  @override
  List<Object?> get props => [];
}
