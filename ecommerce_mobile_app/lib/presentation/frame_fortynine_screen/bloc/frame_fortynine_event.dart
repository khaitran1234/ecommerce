// ignore_for_file: must_be_immutable

part of 'frame_fortynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortynineEvent extends Equatable {}

/// Event that is dispatched when the FrameFortynine widget is first created.
class FrameFortynineInitialEvent extends FrameFortynineEvent {
  @override
  List<Object?> get props => [];
}
