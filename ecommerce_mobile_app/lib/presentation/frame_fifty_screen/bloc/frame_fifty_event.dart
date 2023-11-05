// ignore_for_file: must_be_immutable

part of 'frame_fifty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFifty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFiftyEvent extends Equatable {}

/// Event that is dispatched when the FrameFifty widget is first created.
class FrameFiftyInitialEvent extends FrameFiftyEvent {
  @override
  List<Object?> get props => [];
}
