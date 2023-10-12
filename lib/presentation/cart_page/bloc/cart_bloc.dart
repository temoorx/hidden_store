import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cartlist_item_model.dart';
import 'package:hidden_store/presentation/cart_page/models/cart_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

/// A bloc that manages the state of a Cart according to the event that is dispatched to it.
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(CartState initialState) : super(initialState) {
    on<CartInitialEvent>(_onInitialize);
  }

  List<CartlistItemModel> fillCartlistItemList() {
    return [
      CartlistItemModel(
          image: ImageConstant.imgImageProduct,
          image1: ImageConstant.imgLoveIcon,
          image2: ImageConstant.imgTrashIcon,
          image3: ImageConstant.imgFolder,
          image4: ImageConstant.imgPlus),
      CartlistItemModel(
          image: ImageConstant.imgImageProduct,
          image1: ImageConstant.imgLoveIcon,
          image2: ImageConstant.imgTrashIcon,
          image3: ImageConstant.imgFolder,
          image4: ImageConstant.imgPlus)
    ];
  }

  _onInitialize(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(cuponCodeController: TextEditingController()));
    emit(state.copyWith(
        cartModelObj: state.cartModelObj
            ?.copyWith(cartlistItemList: fillCartlistItemList())));
  }
}
