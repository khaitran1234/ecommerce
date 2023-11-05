// ignore_for_file: must_be_immutable

part of 'frame_thirtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtyeightEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtyeight widget is first created.
class FrameThirtyeightInitialEvent extends FrameThirtyeightEvent {
  @override
  List<Object?> get props => [];
}
