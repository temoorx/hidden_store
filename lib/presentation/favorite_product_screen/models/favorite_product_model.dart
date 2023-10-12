// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'favoriteproduct_item_model.dart';

/// This class defines the variables used in the [favorite_product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoriteProductModel extends Equatable {
  FavoriteProductModel({this.favoriteproductItemList = const []}) {}

  List<FavoriteproductItemModel> favoriteproductItemList;

  FavoriteProductModel copyWith(
      {List<FavoriteproductItemModel>? favoriteproductItemList}) {
    return FavoriteProductModel(
      favoriteproductItemList:
          favoriteproductItemList ?? this.favoriteproductItemList,
    );
  }

  @override
  List<Object?> get props => [favoriteproductItemList];
}
