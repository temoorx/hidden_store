// ignore_for_file: must_be_immutable

part of 'lailyfa_febrina_card_bloc.dart';

/// Represents the state of LailyfaFebrinaCard in the application.
class LailyfaFebrinaCardState extends Equatable {
  LailyfaFebrinaCardState({
    this.cardNumberController,
    this.expirationDateController,
    this.securityCodeController,
    this.cardHolderNameController,
    this.lailyfaFebrinaCardModelObj,
  });

  TextEditingController? cardNumberController;

  TextEditingController? expirationDateController;

  TextEditingController? securityCodeController;

  TextEditingController? cardHolderNameController;

  LailyfaFebrinaCardModel? lailyfaFebrinaCardModelObj;

  @override
  List<Object?> get props => [
        cardNumberController,
        expirationDateController,
        securityCodeController,
        cardHolderNameController,
        lailyfaFebrinaCardModelObj,
      ];
  LailyfaFebrinaCardState copyWith({
    TextEditingController? cardNumberController,
    TextEditingController? expirationDateController,
    TextEditingController? securityCodeController,
    TextEditingController? cardHolderNameController,
    LailyfaFebrinaCardModel? lailyfaFebrinaCardModelObj,
  }) {
    return LailyfaFebrinaCardState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      securityCodeController:
          securityCodeController ?? this.securityCodeController,
      cardHolderNameController:
          cardHolderNameController ?? this.cardHolderNameController,
      lailyfaFebrinaCardModelObj:
          lailyfaFebrinaCardModelObj ?? this.lailyfaFebrinaCardModelObj,
    );
  }
}
