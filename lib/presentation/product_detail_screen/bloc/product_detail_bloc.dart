import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyeight_item_model.dart';
import '../models/sizes_item_model.dart';
import '../models/products_item_model.dart';
import '../models/recomended_item_model.dart';
import 'package:hidden_store/presentation/product_detail_screen/models/product_detail_model.dart';
part 'product_detail_event.dart';
part 'product_detail_state.dart';

/// A bloc that manages the state of a ProductDetail according to the event that is dispatched to it.
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc(ProductDetailState initialState) : super(initialState) {
    on<ProductDetailInitialEvent>(_onInitialize);
  }

  List<FortyeightItemModel> fillFortyeightItemList() {
    return List.generate(1, (index) => FortyeightItemModel());
  }

  List<SizesItemModel> fillSizesItemList() {
    return [
      SizesItemModel(six: "6"),
      SizesItemModel(six: "6.5"),
      SizesItemModel(six: "7"),
      SizesItemModel(six: "7.5"),
      SizesItemModel(six: "8"),
      SizesItemModel(six: "8.5")
    ];
  }

  List<ProductsItemModel> fillProductsItemList() {
    return [
      ProductsItemModel(productPicture: ImageConstant.imgProductPicture02),
      ProductsItemModel(productPicture: ImageConstant.imgProductPicture03),
      ProductsItemModel(productPicture: ImageConstant.imgProductPicture01)
    ];
  }

  List<RecomendedItemModel> fillRecomendedItemList() {
    return [
      RecomendedItemModel(
          image: ImageConstant.imgProductImage,
          fSNikeAirMax: "FS - Nike Air Max 270 React..."),
      RecomendedItemModel(
          image: ImageConstant.imgProductImage109x109,
          fSNikeAirMax: "FS - QUILTED MAXI CROS..."),
      RecomendedItemModel(
          image: ImageConstant.imgProductImage1,
          fSNikeAirMax: "FS - Nike Air Max 270 React...")
    ];
  }

  _onInitialize(
    ProductDetailInitialEvent event,
    Emitter<ProductDetailState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        productDetailModelObj: state.productDetailModelObj?.copyWith(
            fortyeightItemList: fillFortyeightItemList(),
            sizesItemList: fillSizesItemList(),
            productsItemList: fillProductsItemList(),
            recomendedItemList: fillRecomendedItemList())));
  }
}
