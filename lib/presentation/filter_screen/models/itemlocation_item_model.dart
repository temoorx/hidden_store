// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [itemlocation_item_widget] screen.
class ItemlocationItemModel extends Equatable {
  ItemlocationItemModel({
    this.uSOnly = "US Only",
    this.isSelected = false,
  }) {}

  String uSOnly;

  bool isSelected;

  ItemlocationItemModel copyWith({
    String? uSOnly,
    bool? isSelected,
  }) {
    return ItemlocationItemModel(
      uSOnly: uSOnly ?? this.uSOnly,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [uSOnly, isSelected];
}
