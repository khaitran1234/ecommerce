// ignore_for_file: must_be_immutable

part of 'frame_twentynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentynineEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentynine widget is first created.
class FrameTwentynineInitialEvent extends FrameTwentynineEvent {
  @override
  List<Object?> get props => [];
}
