// ignore_for_file: must_be_immutable

part of 'frame_fiftytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFiftytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFiftytwoEvent extends Equatable {}

/// Event that is dispatched when the FrameFiftytwo widget is first created.
class FrameFiftytwoInitialEvent extends FrameFiftytwoEvent {
  @override
  List<Object?> get props => [];
}
