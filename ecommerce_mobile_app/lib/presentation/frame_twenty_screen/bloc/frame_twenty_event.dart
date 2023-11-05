// ignore_for_file: must_be_immutable

part of 'frame_twenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentyEvent extends Equatable {}

/// Event that is dispatched when the FrameTwenty widget is first created.
class FrameTwentyInitialEvent extends FrameTwentyEvent {
  @override
  List<Object?> get props => [];
}
