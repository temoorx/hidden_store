import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/review_product_screen/models/review_product_model.dart';
part 'review_product_event.dart';
part 'review_product_state.dart';

/// A bloc that manages the state of a ReviewProduct according to the event that is dispatched to it.
class ReviewProductBloc extends Bloc<ReviewProductEvent, ReviewProductState> {
  ReviewProductBloc(ReviewProductState initialState) : super(initialState) {
    on<ReviewProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewProductInitialEvent event,
    Emitter<ReviewProductState> emit,
  ) async {}
}
