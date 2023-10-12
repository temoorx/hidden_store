// ignore_for_file: must_be_immutable

part of 'super_flash_sale_bloc.dart';

/// Represents the state of SuperFlashSale in the application.
class SuperFlashSaleState extends Equatable {
  SuperFlashSaleState({this.superFlashSaleModelObj});

  SuperFlashSaleModel? superFlashSaleModelObj;

  @override
  List<Object?> get props => [
        superFlashSaleModelObj,
      ];
  SuperFlashSaleState copyWith({SuperFlashSaleModel? superFlashSaleModelObj}) {
    return SuperFlashSaleState(
      superFlashSaleModelObj:
          superFlashSaleModelObj ?? this.superFlashSaleModelObj,
    );
  }
}
