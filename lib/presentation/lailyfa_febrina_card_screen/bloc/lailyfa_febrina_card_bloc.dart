import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/lailyfa_febrina_card_screen/models/lailyfa_febrina_card_model.dart';
part 'lailyfa_febrina_card_event.dart';
part 'lailyfa_febrina_card_state.dart';

/// A bloc that manages the state of a LailyfaFebrinaCard according to the event that is dispatched to it.
class LailyfaFebrinaCardBloc
    extends Bloc<LailyfaFebrinaCardEvent, LailyfaFebrinaCardState> {
  LailyfaFebrinaCardBloc(LailyfaFebrinaCardState initialState)
      : super(initialState) {
    on<LailyfaFebrinaCardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LailyfaFebrinaCardInitialEvent event,
    Emitter<LailyfaFebrinaCardState> emit,
  ) async {
    emit(state.copyWith(
        cardNumberController: TextEditingController(),
        expirationDateController: TextEditingController(),
        securityCodeController: TextEditingController(),
        cardHolderNameController: TextEditingController()));
  }
}
