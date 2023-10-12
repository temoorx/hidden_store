// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [buyingformate_item_widget] screen.
class BuyingformateItemModel extends Equatable {
  BuyingformateItemModel({
    this.allListings = "All Listings",
    this.isSelected = false,
  }) {}

  String allListings;

  bool isSelected;

  BuyingformateItemModel copyWith({
    String? allListings,
    bool? isSelected,
  }) {
    return BuyingformateItemModel(
      allListings: allListings ?? this.allListings,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [allListings, isSelected];
}
