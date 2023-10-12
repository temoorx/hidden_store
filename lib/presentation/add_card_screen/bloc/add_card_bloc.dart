import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/add_card_screen/models/add_card_model.dart';
part 'add_card_event.dart';
part 'add_card_state.dart';

/// A bloc that manages the state of a AddCard according to the event that is dispatched to it.
class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  AddCardBloc(AddCardState initialState) : super(initialState) {
    on<AddCardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddCardInitialEvent event,
    Emitter<AddCardState> emit,
  ) async {
    emit(state.copyWith(
        cardNumberController: TextEditingController(),
        expirationDateController: TextEditingController(),
        securityCodeController: TextEditingController(),
        cardNumberController1: TextEditingController()));
  }
}
