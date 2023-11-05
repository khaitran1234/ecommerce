// ignore_for_file: must_be_immutable

part of 'frame_twentyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentysevenEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentyseven widget is first created.
class FrameTwentysevenInitialEvent extends FrameTwentysevenEvent {
  @override
  List<Object?> get props => [];
}
