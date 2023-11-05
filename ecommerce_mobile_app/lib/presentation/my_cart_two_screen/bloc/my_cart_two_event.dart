// ignore_for_file: must_be_immutable

part of 'my_cart_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyCartTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyCartTwoEvent extends Equatable {}

/// Event that is dispatched when the MyCartTwo widget is first created.
class MyCartTwoInitialEvent extends MyCartTwoEvent {
  @override
  List<Object?> get props => [];
}
