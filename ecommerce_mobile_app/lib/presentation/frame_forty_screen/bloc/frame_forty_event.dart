// ignore_for_file: must_be_immutable

part of 'frame_forty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameForty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortyEvent extends Equatable {}

/// Event that is dispatched when the FrameForty widget is first created.
class FrameFortyInitialEvent extends FrameFortyEvent {
  @override
  List<Object?> get props => [];
}
