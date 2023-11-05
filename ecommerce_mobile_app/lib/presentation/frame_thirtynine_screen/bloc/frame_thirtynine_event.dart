// ignore_for_file: must_be_immutable

part of 'frame_thirtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtynineEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtynine widget is first created.
class FrameThirtynineInitialEvent extends FrameThirtynineEvent {
  @override
  List<Object?> get props => [];
}
