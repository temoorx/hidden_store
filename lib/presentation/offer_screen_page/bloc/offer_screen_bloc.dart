import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/offerscreen_item_model.dart';
import 'package:hidden_store/presentation/offer_screen_page/models/offer_screen_model.dart';
part 'offer_screen_event.dart';
part 'offer_screen_state.dart';

/// A bloc that manages the state of a OfferScreen according to the event that is dispatched to it.
class OfferScreenBloc extends Bloc<OfferScreenEvent, OfferScreenState> {
  OfferScreenBloc(OfferScreenState initialState) : super(initialState) {
    on<OfferScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OfferScreenInitialEvent event,
    Emitter<OfferScreenState> emit,
  ) async {
    emit(state.copyWith(
        offerScreenModelObj: state.offerScreenModelObj
            ?.copyWith(offerscreenItemList: fillOfferscreenItemList())));
  }

  List<OfferscreenItemModel> fillOfferscreenItemList() {
    return [
      OfferscreenItemModel(
          image: ImageConstant.imgPromotionImage,
          offer: "Super Flash Sale\n50% Off",
          hours: "08",
          minutes: "34",
          secounds: "52"),
      OfferscreenItemModel(
          image: ImageConstant.imgRecomendedProduct,
          offer: "90% Off Super Mega Sale")
    ];
  }
}
