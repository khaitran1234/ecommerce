// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'size_item_model.dart';/// This class defines the variables used in the [product_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailsOneModel extends Equatable {ProductDetailsOneModel({this.sizeItemList = const []}) {  }

List<SizeItemModel> sizeItemList;

ProductDetailsOneModel copyWith({List<SizeItemModel>? sizeItemList}) { return ProductDetailsOneModel(
sizeItemList : sizeItemList ?? this.sizeItemList,
); } 
@override List<Object?> get props => [sizeItemList];
 }
