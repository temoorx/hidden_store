// ignore_for_file: must_be_immutable

part of 'cart_bloc.dart';

/// Represents the state of Cart in the application.
class CartState extends Equatable {
  CartState({
    this.cuponCodeController,
    this.cartModelObj,
  });

  TextEditingController? cuponCodeController;

  CartModel? cartModelObj;

  @override
  List<Object?> get props => [
        cuponCodeController,
        cartModelObj,
      ];
  CartState copyWith({
    TextEditingController? cuponCodeController,
    CartModel? cartModelObj,
  }) {
    return CartState(
      cuponCodeController: cuponCodeController ?? this.cuponCodeController,
      cartModelObj: cartModelObj ?? this.cartModelObj,
    );
  }
}
