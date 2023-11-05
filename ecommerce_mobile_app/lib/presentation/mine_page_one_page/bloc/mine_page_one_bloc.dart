import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productprofile_item_model.dart';
import 'package:ecommerce_mobile_app/presentation/mine_page_one_page/models/mine_page_one_model.dart';
part 'mine_page_one_event.dart';
part 'mine_page_one_state.dart';

/// A bloc that manages the state of a MinePageOne according to the event that is dispatched to it.
class MinePageOneBloc extends Bloc<MinePageOneEvent, MinePageOneState> {
  MinePageOneBloc(MinePageOneState initialState) : super(initialState) {
    on<MinePageOneInitialEvent>(_onInitialize);
  }

  List<ProductprofileItemModel> fillProductprofileItemList() {
    return List.generate(2, (index) => ProductprofileItemModel());
  }

  _onInitialize(
    MinePageOneInitialEvent event,
    Emitter<MinePageOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        minePageOneModelObj: state.minePageOneModelObj?.copyWith(
      productprofileItemList: fillProductprofileItemList(),
    )));
  }
}
