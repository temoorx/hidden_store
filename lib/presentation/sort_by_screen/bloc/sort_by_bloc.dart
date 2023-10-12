import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/sort_by_screen/models/sort_by_model.dart';
part 'sort_by_event.dart';
part 'sort_by_state.dart';

/// A bloc that manages the state of a SortBy according to the event that is dispatched to it.
class SortByBloc extends Bloc<SortByEvent, SortByState> {
  SortByBloc(SortByState initialState) : super(initialState) {
    on<SortByInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SortByInitialEvent event,
    Emitter<SortByState> emit,
  ) async {}
}
