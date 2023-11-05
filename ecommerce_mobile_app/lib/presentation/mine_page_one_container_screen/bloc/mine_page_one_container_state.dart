// ignore_for_file: must_be_immutable

part of 'mine_page_one_container_bloc.dart';

/// Represents the state of MinePageOneContainer in the application.
class MinePageOneContainerState extends Equatable {
  MinePageOneContainerState({this.minePageOneContainerModelObj});

  MinePageOneContainerModel? minePageOneContainerModelObj;

  @override
  List<Object?> get props => [
        minePageOneContainerModelObj,
      ];
  MinePageOneContainerState copyWith(
      {MinePageOneContainerModel? minePageOneContainerModelObj}) {
    return MinePageOneContainerState(
      minePageOneContainerModelObj:
          minePageOneContainerModelObj ?? this.minePageOneContainerModelObj,
    );
  }
}
