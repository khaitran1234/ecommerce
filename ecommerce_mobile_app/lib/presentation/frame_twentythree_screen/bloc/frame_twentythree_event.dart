// ignore_for_file: must_be_immutable

part of 'frame_twentythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentythreeEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentythree widget is first created.
class FrameTwentythreeInitialEvent extends FrameTwentythreeEvent {
  @override
  List<Object?> get props => [];
}
