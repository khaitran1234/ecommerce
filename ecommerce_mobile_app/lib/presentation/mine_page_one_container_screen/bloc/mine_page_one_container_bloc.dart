import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ecommerce_mobile_app/presentation/mine_page_one_container_screen/models/mine_page_one_container_model.dart';part 'mine_page_one_container_event.dart';part 'mine_page_one_container_state.dart';/// A bloc that manages the state of a MinePageOneContainer according to the event that is dispatched to it.
class MinePageOneContainerBloc extends Bloc<MinePageOneContainerEvent, MinePageOneContainerState> {MinePageOneContainerBloc(MinePageOneContainerState initialState) : super(initialState) { on<MinePageOneContainerInitialEvent>(_onInitialize); }

_onInitialize(MinePageOneContainerInitialEvent event, Emitter<MinePageOneContainerState> emit, ) async  {  } 
 }
