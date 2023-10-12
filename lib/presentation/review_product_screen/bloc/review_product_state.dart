// ignore_for_file: must_be_immutable

part of 'review_product_bloc.dart';

/// Represents the state of ReviewProduct in the application.
class ReviewProductState extends Equatable {
  ReviewProductState({this.reviewProductModelObj});

  ReviewProductModel? reviewProductModelObj;

  @override
  List<Object?> get props => [
        reviewProductModelObj,
      ];
  ReviewProductState copyWith({ReviewProductModel? reviewProductModelObj}) {
    return ReviewProductState(
      reviewProductModelObj:
          reviewProductModelObj ?? this.reviewProductModelObj,
    );
  }
}
