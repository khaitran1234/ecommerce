// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [size_item_widget] screen.
class SizeItemModel extends Equatable {SizeItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

SizeItemModel copyWith({String? s, bool? isSelected, }) { return SizeItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
