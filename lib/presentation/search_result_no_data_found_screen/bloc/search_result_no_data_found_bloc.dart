import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/search_result_no_data_found_screen/models/search_result_no_data_found_model.dart';
part 'search_result_no_data_found_event.dart';
part 'search_result_no_data_found_state.dart';

/// A bloc that manages the state of a SearchResultNoDataFound according to the event that is dispatched to it.
class SearchResultNoDataFoundBloc
    extends Bloc<SearchResultNoDataFoundEvent, SearchResultNoDataFoundState> {
  SearchResultNoDataFoundBloc(SearchResultNoDataFoundState initialState)
      : super(initialState) {
    on<SearchResultNoDataFoundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultNoDataFoundInitialEvent event,
    Emitter<SearchResultNoDataFoundState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
