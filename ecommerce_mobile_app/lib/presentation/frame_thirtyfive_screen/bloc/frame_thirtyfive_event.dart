// ignore_for_file: must_be_immutable

part of 'frame_thirtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtyfiveEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtyfive widget is first created.
class FrameThirtyfiveInitialEvent extends FrameThirtyfiveEvent {
  @override
  List<Object?> get props => [];
}
