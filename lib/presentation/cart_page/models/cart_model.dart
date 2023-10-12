// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'cartlist_item_model.dart';

/// This class defines the variables used in the [cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel extends Equatable {
  CartModel({this.cartlistItemList = const []}) {}

  List<CartlistItemModel> cartlistItemList;

  CartModel copyWith({List<CartlistItemModel>? cartlistItemList}) {
    return CartModel(
      cartlistItemList: cartlistItemList ?? this.cartlistItemList,
    );
  }

  @override
  List<Object?> get props => [cartlistItemList];
}
