// ignore_for_file: must_be_immutable

part of 'my_cart_two_bloc.dart';

/// Represents the state of MyCartTwo in the application.
class MyCartTwoState extends Equatable {
  MyCartTwoState({
    this.promoCodeController,
    this.myCartTwoModelObj,
  });

  TextEditingController? promoCodeController;

  MyCartTwoModel? myCartTwoModelObj;

  @override
  List<Object?> get props => [
        promoCodeController,
        myCartTwoModelObj,
      ];
  MyCartTwoState copyWith({
    TextEditingController? promoCodeController,
    MyCartTwoModel? myCartTwoModelObj,
  }) {
    return MyCartTwoState(
      promoCodeController: promoCodeController ?? this.promoCodeController,
      myCartTwoModelObj: myCartTwoModelObj ?? this.myCartTwoModelObj,
    );
  }
}
