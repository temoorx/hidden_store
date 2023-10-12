import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/addresslist_item_model.dart';
import 'package:hidden_store/presentation/address_screen/models/address_model.dart';
part 'address_event.dart';
part 'address_state.dart';

/// A bloc that manages the state of a Address according to the event that is dispatched to it.
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc(AddressState initialState) : super(initialState) {
    on<AddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressInitialEvent event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(
        addressModelObj: state.addressModelObj
            ?.copyWith(addresslistItemList: fillAddresslistItemList())));
  }

  List<AddresslistItemModel> fillAddresslistItemList() {
    return [
      AddresslistItemModel(priscekila: "Priscekila"),
      AddresslistItemModel(priscekila: "Ahmad Khaidir")
    ];
  }
}
