// ignore_for_file: must_be_immutable

part of 'frame_fortyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortyeightEvent extends Equatable {}

/// Event that is dispatched when the FrameFortyeight widget is first created.
class FrameFortyeightInitialEvent extends FrameFortyeightEvent {
  @override
  List<Object?> get props => [];
}
