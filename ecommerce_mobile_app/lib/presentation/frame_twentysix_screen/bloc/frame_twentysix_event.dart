// ignore_for_file: must_be_immutable

part of 'frame_twentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentysixEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentysix widget is first created.
class FrameTwentysixInitialEvent extends FrameTwentysixEvent {
  @override
  List<Object?> get props => [];
}
