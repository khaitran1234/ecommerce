// ignore_for_file: must_be_immutable

part of 'frame_thirtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtysevenEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtyseven widget is first created.
class FrameThirtysevenInitialEvent extends FrameThirtysevenEvent {
  @override
  List<Object?> get props => [];
}
