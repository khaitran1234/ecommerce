// ignore_for_file: must_be_immutable

part of 'frame_fortyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortyfourEvent extends Equatable {}

/// Event that is dispatched when the FrameFortyfour widget is first created.
class FrameFortyfourInitialEvent extends FrameFortyfourEvent {
  @override
  List<Object?> get props => [];
}
