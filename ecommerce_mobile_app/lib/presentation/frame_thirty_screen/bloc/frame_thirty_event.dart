// ignore_for_file: must_be_immutable

part of 'frame_thirty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtyEvent extends Equatable {}

/// Event that is dispatched when the FrameThirty widget is first created.
class FrameThirtyInitialEvent extends FrameThirtyEvent {
  @override
  List<Object?> get props => [];
}
