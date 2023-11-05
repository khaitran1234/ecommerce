import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/size_item_model.dart';
import 'package:ecommerce_mobile_app/presentation/product_details_one_screen/models/product_details_one_model.dart';
part 'product_details_one_event.dart';
part 'product_details_one_state.dart';

/// A bloc that manages the state of a ProductDetailsOne according to the event that is dispatched to it.
class ProductDetailsOneBloc
    extends Bloc<ProductDetailsOneEvent, ProductDetailsOneState> {
  ProductDetailsOneBloc(ProductDetailsOneState initialState)
      : super(initialState) {
    on<ProductDetailsOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    ProductDetailsOneInitialEvent event,
    Emitter<ProductDetailsOneState> emit,
  ) async {
    emit(state.copyWith(
        productDetailsOneModelObj: state.productDetailsOneModelObj?.copyWith(
      sizeItemList: fillSizeItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProductDetailsOneState> emit,
  ) {
    List<SizeItemModel> newList =
        List<SizeItemModel>.from(state.productDetailsOneModelObj!.sizeItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        productDetailsOneModelObj:
            state.productDetailsOneModelObj?.copyWith(sizeItemList: newList)));
  }

  List<SizeItemModel> fillSizeItemList() {
    return List.generate(5, (index) => SizeItemModel());
  }
}
