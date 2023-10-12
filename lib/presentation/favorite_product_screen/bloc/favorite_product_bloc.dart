import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favoriteproduct_item_model.dart';
import 'package:hidden_store/presentation/favorite_product_screen/models/favorite_product_model.dart';
part 'favorite_product_event.dart';
part 'favorite_product_state.dart';

/// A bloc that manages the state of a FavoriteProduct according to the event that is dispatched to it.
class FavoriteProductBloc
    extends Bloc<FavoriteProductEvent, FavoriteProductState> {
  FavoriteProductBloc(FavoriteProductState initialState) : super(initialState) {
    on<FavoriteProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoriteProductInitialEvent event,
    Emitter<FavoriteProductState> emit,
  ) async {
    emit(state.copyWith(
        favoriteProductModelObj: state.favoriteProductModelObj?.copyWith(
            favoriteproductItemList: fillFavoriteproductItemList())));
  }

  List<FavoriteproductItemModel> fillFavoriteproductItemList() {
    return [
      FavoriteproductItemModel(
          image: ImageConstant.imgProductImage2,
          image1: ImageConstant.imgTrashIcon),
      FavoriteproductItemModel(
          image: ImageConstant.imgProductImage3,
          image1: ImageConstant.imgTrashIcon),
      FavoriteproductItemModel(
          image: ImageConstant.imgProductImage,
          image1: ImageConstant.imgTrashIcon),
      FavoriteproductItemModel(
          image: ImageConstant.imgProductImage109x109,
          image1: ImageConstant.imgTrashIcon)
    ];
  }
}
