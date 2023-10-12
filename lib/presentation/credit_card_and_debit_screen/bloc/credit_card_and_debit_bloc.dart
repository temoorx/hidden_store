import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/creditcardanddebit_item_model.dart';
import 'package:hidden_store/presentation/credit_card_and_debit_screen/models/credit_card_and_debit_model.dart';
part 'credit_card_and_debit_event.dart';
part 'credit_card_and_debit_state.dart';

/// A bloc that manages the state of a CreditCardAndDebit according to the event that is dispatched to it.
class CreditCardAndDebitBloc
    extends Bloc<CreditCardAndDebitEvent, CreditCardAndDebitState> {
  CreditCardAndDebitBloc(CreditCardAndDebitState initialState)
      : super(initialState) {
    on<CreditCardAndDebitInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreditCardAndDebitInitialEvent event,
    Emitter<CreditCardAndDebitState> emit,
  ) async {
    emit(state.copyWith(
        creditCardAndDebitModelObj: state.creditCardAndDebitModelObj?.copyWith(
            creditcardanddebitItemList: fillCreditcardanddebitItemList())));
  }

  List<CreditcardanddebitItemModel> fillCreditcardanddebitItemList() {
    return [
      CreditcardanddebitItemModel(image: ImageConstant.imgVolume),
      CreditcardanddebitItemModel(image: ImageConstant.imgVolume)
    ];
  }
}
