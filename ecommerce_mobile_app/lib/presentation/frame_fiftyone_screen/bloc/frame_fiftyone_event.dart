// ignore_for_file: must_be_immutable

part of 'frame_fiftyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFiftyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFiftyoneEvent extends Equatable {}

/// Event that is dispatched when the FrameFiftyone widget is first created.
class FrameFiftyoneInitialEvent extends FrameFiftyoneEvent {
  @override
  List<Object?> get props => [];
}
