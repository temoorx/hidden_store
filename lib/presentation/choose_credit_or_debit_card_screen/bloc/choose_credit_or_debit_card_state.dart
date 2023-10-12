// ignore_for_file: must_be_immutable

part of 'choose_credit_or_debit_card_bloc.dart';

/// Represents the state of ChooseCreditOrDebitCard in the application.
class ChooseCreditOrDebitCardState extends Equatable {
  ChooseCreditOrDebitCardState({
    this.sliderIndex = 0,
    this.chooseCreditOrDebitCardModelObj,
  });

  ChooseCreditOrDebitCardModel? chooseCreditOrDebitCardModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        chooseCreditOrDebitCardModelObj,
      ];
  ChooseCreditOrDebitCardState copyWith({
    int? sliderIndex,
    ChooseCreditOrDebitCardModel? chooseCreditOrDebitCardModelObj,
  }) {
    return ChooseCreditOrDebitCardState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      chooseCreditOrDebitCardModelObj: chooseCreditOrDebitCardModelObj ??
          this.chooseCreditOrDebitCardModelObj,
    );
  }
}
