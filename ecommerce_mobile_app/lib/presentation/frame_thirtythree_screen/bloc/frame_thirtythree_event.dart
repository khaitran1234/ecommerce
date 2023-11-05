// ignore_for_file: must_be_immutable

part of 'frame_thirtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtythreeEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtythree widget is first created.
class FrameThirtythreeInitialEvent extends FrameThirtythreeEvent {
  @override
  List<Object?> get props => [];
}
