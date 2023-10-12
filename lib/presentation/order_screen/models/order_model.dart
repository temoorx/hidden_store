// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'orderlist_item_model.dart';

/// This class defines the variables used in the [order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderModel extends Equatable {
  OrderModel({this.orderlistItemList = const []}) {}

  List<OrderlistItemModel> orderlistItemList;

  OrderModel copyWith({List<OrderlistItemModel>? orderlistItemList}) {
    return OrderModel(
      orderlistItemList: orderlistItemList ?? this.orderlistItemList,
    );
  }

  @override
  List<Object?> get props => [orderlistItemList];
}
