// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

/// Represents the state of PaymentMethod in the application.
class PaymentMethodState extends Equatable {
  PaymentMethodState({this.paymentMethodModelObj});

  PaymentMethodModel? paymentMethodModelObj;

  @override
  List<Object?> get props => [
        paymentMethodModelObj,
      ];
  PaymentMethodState copyWith({PaymentMethodModel? paymentMethodModelObj}) {
    return PaymentMethodState(
      paymentMethodModelObj:
          paymentMethodModelObj ?? this.paymentMethodModelObj,
    );
  }
}
