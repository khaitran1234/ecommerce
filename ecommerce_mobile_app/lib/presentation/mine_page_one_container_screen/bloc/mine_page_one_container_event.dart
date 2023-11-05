// ignore_for_file: must_be_immutable

part of 'mine_page_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MinePageOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MinePageOneContainerEvent extends Equatable {}

/// Event that is dispatched when the MinePageOneContainer widget is first created.
class MinePageOneContainerInitialEvent extends MinePageOneContainerEvent {
  @override
  List<Object?> get props => [];
}
