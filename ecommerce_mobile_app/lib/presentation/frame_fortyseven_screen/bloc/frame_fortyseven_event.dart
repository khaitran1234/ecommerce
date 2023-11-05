// ignore_for_file: must_be_immutable

part of 'frame_fortyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortysevenEvent extends Equatable {}

/// Event that is dispatched when the FrameFortyseven widget is first created.
class FrameFortysevenInitialEvent extends FrameFortysevenEvent {
  @override
  List<Object?> get props => [];
}
