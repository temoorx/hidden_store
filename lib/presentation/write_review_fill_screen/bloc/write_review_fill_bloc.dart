import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/write_review_fill_screen/models/write_review_fill_model.dart';
part 'write_review_fill_event.dart';
part 'write_review_fill_state.dart';

/// A bloc that manages the state of a WriteReviewFill according to the event that is dispatched to it.
class WriteReviewFillBloc
    extends Bloc<WriteReviewFillEvent, WriteReviewFillState> {
  WriteReviewFillBloc(WriteReviewFillState initialState) : super(initialState) {
    on<WriteReviewFillInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WriteReviewFillInitialEvent event,
    Emitter<WriteReviewFillState> emit,
  ) async {
    emit(state.copyWith(addReviewController: TextEditingController()));
  }
}
