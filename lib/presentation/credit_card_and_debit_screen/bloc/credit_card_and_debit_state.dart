// ignore_for_file: must_be_immutable

part of 'credit_card_and_debit_bloc.dart';

/// Represents the state of CreditCardAndDebit in the application.
class CreditCardAndDebitState extends Equatable {
  CreditCardAndDebitState({this.creditCardAndDebitModelObj});

  CreditCardAndDebitModel? creditCardAndDebitModelObj;

  @override
  List<Object?> get props => [
        creditCardAndDebitModelObj,
      ];
  CreditCardAndDebitState copyWith(
      {CreditCardAndDebitModel? creditCardAndDebitModelObj}) {
    return CreditCardAndDebitState(
      creditCardAndDebitModelObj:
          creditCardAndDebitModelObj ?? this.creditCardAndDebitModelObj,
    );
  }
}
