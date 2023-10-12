// ignore_for_file: must_be_immutable

part of 'add_card_bloc.dart';

/// Represents the state of AddCard in the application.
class AddCardState extends Equatable {
  AddCardState({
    this.cardNumberController,
    this.expirationDateController,
    this.securityCodeController,
    this.cardNumberController1,
    this.addCardModelObj,
  });

  TextEditingController? cardNumberController;

  TextEditingController? expirationDateController;

  TextEditingController? securityCodeController;

  TextEditingController? cardNumberController1;

  AddCardModel? addCardModelObj;

  @override
  List<Object?> get props => [
        cardNumberController,
        expirationDateController,
        securityCodeController,
        cardNumberController1,
        addCardModelObj,
      ];
  AddCardState copyWith({
    TextEditingController? cardNumberController,
    TextEditingController? expirationDateController,
    TextEditingController? securityCodeController,
    TextEditingController? cardNumberController1,
    AddCardModel? addCardModelObj,
  }) {
    return AddCardState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      securityCodeController:
          securityCodeController ?? this.securityCodeController,
      cardNumberController1:
          cardNumberController1 ?? this.cardNumberController1,
      addCardModelObj: addCardModelObj ?? this.addCardModelObj,
    );
  }
}
