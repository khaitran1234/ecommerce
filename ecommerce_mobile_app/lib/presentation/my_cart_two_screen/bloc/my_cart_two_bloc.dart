import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce_mobile_app/presentation/my_cart_two_screen/models/my_cart_two_model.dart';
part 'my_cart_two_event.dart';
part 'my_cart_two_state.dart';

/// A bloc that manages the state of a MyCartTwo according to the event that is dispatched to it.
class MyCartTwoBloc extends Bloc<MyCartTwoEvent, MyCartTwoState> {
  MyCartTwoBloc(MyCartTwoState initialState) : super(initialState) {
    on<MyCartTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyCartTwoInitialEvent event,
    Emitter<MyCartTwoState> emit,
  ) async {
    emit(state.copyWith(
      promoCodeController: TextEditingController(),
    ));
  }
}
