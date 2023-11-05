// ignore_for_file: must_be_immutable

part of 'frame_fortyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortyoneEvent extends Equatable {}

/// Event that is dispatched when the FrameFortyone widget is first created.
class FrameFortyoneInitialEvent extends FrameFortyoneEvent {
  @override
  List<Object?> get props => [];
}
