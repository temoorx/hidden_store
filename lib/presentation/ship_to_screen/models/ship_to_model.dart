// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'shiptolist_item_model.dart';

/// This class defines the variables used in the [ship_to_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShipToModel extends Equatable {
  ShipToModel({this.shiptolistItemList = const []}) {}

  List<ShiptolistItemModel> shiptolistItemList;

  ShipToModel copyWith({List<ShiptolistItemModel>? shiptolistItemList}) {
    return ShipToModel(
      shiptolistItemList: shiptolistItemList ?? this.shiptolistItemList,
    );
  }

  @override
  List<Object?> get props => [shiptolistItemList];
}
