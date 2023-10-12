// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'condition_item_model.dart';
import 'buyingformate_item_model.dart';
import 'itemlocation_item_model.dart';
import 'showonly_item_model.dart';

/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel extends Equatable {
  FilterModel({
    this.conditionItemList = const [],
    this.buyingformateItemList = const [],
    this.itemlocationItemList = const [],
    this.showonlyItemList = const [],
  }) {}

  List<ConditionItemModel> conditionItemList;

  List<BuyingformateItemModel> buyingformateItemList;

  List<ItemlocationItemModel> itemlocationItemList;

  List<ShowonlyItemModel> showonlyItemList;

  FilterModel copyWith({
    List<ConditionItemModel>? conditionItemList,
    List<BuyingformateItemModel>? buyingformateItemList,
    List<ItemlocationItemModel>? itemlocationItemList,
    List<ShowonlyItemModel>? showonlyItemList,
  }) {
    return FilterModel(
      conditionItemList: conditionItemList ?? this.conditionItemList,
      buyingformateItemList:
          buyingformateItemList ?? this.buyingformateItemList,
      itemlocationItemList: itemlocationItemList ?? this.itemlocationItemList,
      showonlyItemList: showonlyItemList ?? this.showonlyItemList,
    );
  }

  @override
  List<Object?> get props => [
        conditionItemList,
        buyingformateItemList,
        itemlocationItemList,
        showonlyItemList
      ];
}
