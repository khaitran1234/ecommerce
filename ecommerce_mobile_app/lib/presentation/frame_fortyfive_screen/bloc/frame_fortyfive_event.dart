// ignore_for_file: must_be_immutable

part of 'frame_fortyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortyfiveEvent extends Equatable {}

/// Event that is dispatched when the FrameFortyfive widget is first created.
class FrameFortyfiveInitialEvent extends FrameFortyfiveEvent {
  @override
  List<Object?> get props => [];
}
