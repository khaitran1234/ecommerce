// ignore_for_file: must_be_immutable

part of 'frame_thirtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtyoneEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtyone widget is first created.
class FrameThirtyoneInitialEvent extends FrameThirtyoneEvent {
  @override
  List<Object?> get props => [];
}
