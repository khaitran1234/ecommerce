// ignore_for_file: must_be_immutable

part of 'frame_twentyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentyfiveEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentyfive widget is first created.
class FrameTwentyfiveInitialEvent extends FrameTwentyfiveEvent {
  @override
  List<Object?> get props => [];
}
