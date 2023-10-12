import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetails_item_model.dart';
import 'package:hidden_store/presentation/order_details_screen/models/order_details_model.dart';
part 'order_details_event.dart';
part 'order_details_state.dart';

/// A bloc that manages the state of a OrderDetails according to the event that is dispatched to it.
class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  OrderDetailsBloc(OrderDetailsState initialState) : super(initialState) {
    on<OrderDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderDetailsInitialEvent event,
    Emitter<OrderDetailsState> emit,
  ) async {
    emit(state.copyWith(
        orderDetailsModelObj: state.orderDetailsModelObj
            ?.copyWith(orderdetailsItemList: fillOrderdetailsItemList())));
  }

  List<OrderdetailsItemModel> fillOrderdetailsItemList() {
    return [
      OrderdetailsItemModel(
          image: ImageConstant.imgImageProduct,
          image1: ImageConstant.imgLoveIcon,
          image2: ImageConstant.imgTrashIcon,
          image3: ImageConstant.imgFolder,
          image4: ImageConstant.imgPlus),
      OrderdetailsItemModel(
          image: ImageConstant.imgProductImage1,
          image1: ImageConstant.imgDownload,
          image2: ImageConstant.imgTrashIcon,
          image3: ImageConstant.imgFolder,
          image4: ImageConstant.imgPlus)
    ];
  }
}
