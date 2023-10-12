import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/account_page/models/account_model.dart';
part 'account_event.dart';
part 'account_state.dart';

/// A bloc that manages the state of a Account according to the event that is dispatched to it.
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(AccountState initialState) : super(initialState) {
    on<AccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountInitialEvent event,
    Emitter<AccountState> emit,
  ) async {}
}
