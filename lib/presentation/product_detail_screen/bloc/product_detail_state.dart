// ignore_for_file: must_be_immutable

part of 'product_detail_bloc.dart';

/// Represents the state of ProductDetail in the application.
class ProductDetailState extends Equatable {
  ProductDetailState({
    this.sliderIndex = 0,
    this.productDetailModelObj,
  });

  ProductDetailModel? productDetailModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productDetailModelObj,
      ];
  ProductDetailState copyWith({
    int? sliderIndex,
    ProductDetailModel? productDetailModelObj,
  }) {
    return ProductDetailState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productDetailModelObj:
          productDetailModelObj ?? this.productDetailModelObj,
    );
  }
}
