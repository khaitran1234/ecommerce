// ignore_for_file: must_be_immutable

part of 'mine_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MinePageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MinePageOneEvent extends Equatable {}

/// Event that is dispatched when the MinePageOne widget is first created.
class MinePageOneInitialEvent extends MinePageOneEvent {
  @override
  List<Object?> get props => [];
}
