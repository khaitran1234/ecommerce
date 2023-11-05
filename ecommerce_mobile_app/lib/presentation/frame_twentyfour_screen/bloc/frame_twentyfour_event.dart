// ignore_for_file: must_be_immutable

part of 'frame_twentyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentyfourEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentyfour widget is first created.
class FrameTwentyfourInitialEvent extends FrameTwentyfourEvent {
  @override
  List<Object?> get props => [];
}
