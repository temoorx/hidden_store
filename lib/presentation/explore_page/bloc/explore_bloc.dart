import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/manworkequipment_item_model.dart';
import '../models/womantshirticon_item_model.dart';
import 'package:hidden_store/presentation/explore_page/models/explore_model.dart';
part 'explore_event.dart';
part 'explore_state.dart';

/// A bloc that manages the state of a Explore according to the event that is dispatched to it.
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(ExploreState initialState) : super(initialState) {
    on<ExploreInitialEvent>(_onInitialize);
  }

  List<ManworkequipmentItemModel> fillManworkequipmentItemList() {
    return [
      ManworkequipmentItemModel(
          manWorkEquipment: ImageConstant.imgManWorkEquipment,
          officeBag: "Office Bag"),
      ManworkequipmentItemModel(
          manWorkEquipment: ImageConstant.imgArrowLeftPrimary,
          officeBag: "Shirt"),
      ManworkequipmentItemModel(
          manWorkEquipment: ImageConstant.imgManTShirtIcon,
          officeBag: "T-Shirt"),
      ManworkequipmentItemModel(
          manWorkEquipment: ImageConstant.imgManShoesIcon, officeBag: "Shoes"),
      ManworkequipmentItemModel(
          manWorkEquipment: ImageConstant.imgManPantsIcon, officeBag: "Pants"),
      ManworkequipmentItemModel(
          manWorkEquipment: ImageConstant.imgManUnderwearIcon,
          officeBag: "Underwear")
    ];
  }

  List<WomantshirticonItemModel> fillWomantshirticonItemList() {
    return [
      WomantshirticonItemModel(
          womanTShirtIcon: ImageConstant.imgWomanTShirtIcon, tShirt: "T-Shirt"),
      WomantshirticonItemModel(
          womanTShirtIcon: ImageConstant.imgDressIcon, tShirt: "Dress"),
      WomantshirticonItemModel(
          womanTShirtIcon: ImageConstant.imgWomanPantsIconPrimary,
          tShirt: "Pants"),
      WomantshirticonItemModel(
          womanTShirtIcon: ImageConstant.imgSkirtIcon, tShirt: "Skirt"),
      WomantshirticonItemModel(
          womanTShirtIcon: ImageConstant.imgWomanBagIcon, tShirt: "Bag"),
      WomantshirticonItemModel(
          womanTShirtIcon: ImageConstant.imgHighHeelsIcon, tShirt: "Heels"),
      WomantshirticonItemModel(
          womanTShirtIcon: ImageConstant.imgBikiniIcon, tShirt: "Bikini")
    ];
  }

  _onInitialize(
    ExploreInitialEvent event,
    Emitter<ExploreState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreModelObj: state.exploreModelObj?.copyWith(
            manworkequipmentItemList: fillManworkequipmentItemList(),
            womantshirticonItemList: fillWomantshirticonItemList())));
  }
}
