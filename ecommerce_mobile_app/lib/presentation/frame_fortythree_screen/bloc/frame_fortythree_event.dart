// ignore_for_file: must_be_immutable

part of 'frame_fortythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortythreeEvent extends Equatable {}

/// Event that is dispatched when the FrameFortythree widget is first created.
class FrameFortythreeInitialEvent extends FrameFortythreeEvent {
  @override
  List<Object?> get props => [];
}
