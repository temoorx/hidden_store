// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [condition_item_widget] screen.
class ConditionItemModel extends Equatable {
  ConditionItemModel({
    this.newVar = "New",
    this.isSelected = false,
  }) {}

  String newVar;

  bool isSelected;

  ConditionItemModel copyWith({
    String? newVar,
    bool? isSelected,
  }) {
    return ConditionItemModel(
      newVar: newVar ?? this.newVar,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [newVar, isSelected];
}
