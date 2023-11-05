// ignore_for_file: must_be_immutable

part of 'frame_thirtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtytwoEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtytwo widget is first created.
class FrameThirtytwoInitialEvent extends FrameThirtytwoEvent {
  @override
  List<Object?> get props => [];
}
