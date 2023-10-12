// ignore_for_file: must_be_immutable

part of 'add_payment_bloc.dart';

/// Represents the state of AddPayment in the application.
class AddPaymentState extends Equatable {
  AddPaymentState({this.addPaymentModelObj});

  AddPaymentModel? addPaymentModelObj;

  @override
  List<Object?> get props => [
        addPaymentModelObj,
      ];
  AddPaymentState copyWith({AddPaymentModel? addPaymentModelObj}) {
    return AddPaymentState(
      addPaymentModelObj: addPaymentModelObj ?? this.addPaymentModelObj,
    );
  }
}
