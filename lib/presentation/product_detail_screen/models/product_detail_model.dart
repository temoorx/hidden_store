// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'fortyeight_item_model.dart';
import '../../../core/app_export.dart';
import 'sizes_item_model.dart';
import 'products_item_model.dart';
import 'recomended_item_model.dart';

/// This class defines the variables used in the [product_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailModel extends Equatable {
  ProductDetailModel({
    this.fortyeightItemList = const [],
    this.sizesItemList = const [],
    this.productsItemList = const [],
    this.recomendedItemList = const [],
  }) {}

  List<FortyeightItemModel> fortyeightItemList;

  List<SizesItemModel> sizesItemList;

  List<ProductsItemModel> productsItemList;

  List<RecomendedItemModel> recomendedItemList;

  ProductDetailModel copyWith({
    List<FortyeightItemModel>? fortyeightItemList,
    List<SizesItemModel>? sizesItemList,
    List<ProductsItemModel>? productsItemList,
    List<RecomendedItemModel>? recomendedItemList,
  }) {
    return ProductDetailModel(
      fortyeightItemList: fortyeightItemList ?? this.fortyeightItemList,
      sizesItemList: sizesItemList ?? this.sizesItemList,
      productsItemList: productsItemList ?? this.productsItemList,
      recomendedItemList: recomendedItemList ?? this.recomendedItemList,
    );
  }

  @override
  List<Object?> get props =>
      [fortyeightItemList, sizesItemList, productsItemList, recomendedItemList];
}
