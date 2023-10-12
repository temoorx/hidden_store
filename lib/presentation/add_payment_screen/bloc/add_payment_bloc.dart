import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/add_payment_screen/models/add_payment_model.dart';
part 'add_payment_event.dart';
part 'add_payment_state.dart';

/// A bloc that manages the state of a AddPayment according to the event that is dispatched to it.
class AddPaymentBloc extends Bloc<AddPaymentEvent, AddPaymentState> {
  AddPaymentBloc(AddPaymentState initialState) : super(initialState) {
    on<AddPaymentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddPaymentInitialEvent event,
    Emitter<AddPaymentState> emit,
  ) async {}
}
