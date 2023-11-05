// ignore_for_file: must_be_immutable

part of 'frame_thirtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtyfourEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtyfour widget is first created.
class FrameThirtyfourInitialEvent extends FrameThirtyfourEvent {
  @override
  List<Object?> get props => [];
}
