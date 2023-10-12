// ignore_for_file: must_be_immutable

part of 'write_review_fill_bloc.dart';

/// Represents the state of WriteReviewFill in the application.
class WriteReviewFillState extends Equatable {
  WriteReviewFillState({
    this.addReviewController,
    this.writeReviewFillModelObj,
  });

  TextEditingController? addReviewController;

  WriteReviewFillModel? writeReviewFillModelObj;

  @override
  List<Object?> get props => [
        addReviewController,
        writeReviewFillModelObj,
      ];
  WriteReviewFillState copyWith({
    TextEditingController? addReviewController,
    WriteReviewFillModel? writeReviewFillModelObj,
  }) {
    return WriteReviewFillState(
      addReviewController: addReviewController ?? this.addReviewController,
      writeReviewFillModelObj:
          writeReviewFillModelObj ?? this.writeReviewFillModelObj,
    );
  }
}
