// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [showonly_item_widget] screen.
class ShowonlyItemModel extends Equatable {
  ShowonlyItemModel({
    this.freeReturns = "Free Returns",
    this.isSelected = false,
  }) {}

  String freeReturns;

  bool isSelected;

  ShowonlyItemModel copyWith({
    String? freeReturns,
    bool? isSelected,
  }) {
    return ShowonlyItemModel(
      freeReturns: freeReturns ?? this.freeReturns,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [freeReturns, isSelected];
}
