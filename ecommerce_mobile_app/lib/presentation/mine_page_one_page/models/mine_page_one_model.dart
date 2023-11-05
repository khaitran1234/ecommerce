// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'productprofile_item_model.dart';/// This class defines the variables used in the [mine_page_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MinePageOneModel extends Equatable {MinePageOneModel({this.productprofileItemList = const []}) {  }

List<ProductprofileItemModel> productprofileItemList;

MinePageOneModel copyWith({List<ProductprofileItemModel>? productprofileItemList}) { return MinePageOneModel(
productprofileItemList : productprofileItemList ?? this.productprofileItemList,
); } 
@override List<Object?> get props => [productprofileItemList];
 }
