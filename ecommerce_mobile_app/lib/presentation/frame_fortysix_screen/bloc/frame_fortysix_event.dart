// ignore_for_file: must_be_immutable

part of 'frame_fortysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFortysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFortysixEvent extends Equatable {}

/// Event that is dispatched when the FrameFortysix widget is first created.
class FrameFortysixInitialEvent extends FrameFortysixEvent {
  @override
  List<Object?> get props => [];
}
