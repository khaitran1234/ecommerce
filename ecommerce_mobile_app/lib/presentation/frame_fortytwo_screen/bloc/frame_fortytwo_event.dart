// ignore_for_file: must_be_immutable

part of 'frame_fortytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortytwoEvent extends Equatable {}

/// Event that is dispatched when the FrameFortytwo widget is first created.
class FrameFortytwoInitialEvent extends FrameFortytwoEvent {
  @override
  List<Object?> get props => [];
}
