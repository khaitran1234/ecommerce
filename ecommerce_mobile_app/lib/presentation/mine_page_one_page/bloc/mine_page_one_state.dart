// ignore_for_file: must_be_immutable

part of 'mine_page_one_bloc.dart';

/// Represents the state of MinePageOne in the application.
class MinePageOneState extends Equatable {
  MinePageOneState({
    this.searchController,
    this.minePageOneModelObj,
  });

  TextEditingController? searchController;

  MinePageOneModel? minePageOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        minePageOneModelObj,
      ];
  MinePageOneState copyWith({
    TextEditingController? searchController,
    MinePageOneModel? minePageOneModelObj,
  }) {
    return MinePageOneState(
      searchController: searchController ?? this.searchController,
      minePageOneModelObj: minePageOneModelObj ?? this.minePageOneModelObj,
    );
  }
}
