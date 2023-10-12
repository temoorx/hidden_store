// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'creditcardslider_item_model.dart';

/// This class defines the variables used in the [choose_credit_or_debit_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseCreditOrDebitCardModel extends Equatable {
  ChooseCreditOrDebitCardModel({this.creditcardsliderItemList = const []}) {}

  List<CreditcardsliderItemModel> creditcardsliderItemList;

  ChooseCreditOrDebitCardModel copyWith(
      {List<CreditcardsliderItemModel>? creditcardsliderItemList}) {
    return ChooseCreditOrDebitCardModel(
      creditcardsliderItemList:
          creditcardsliderItemList ?? this.creditcardsliderItemList,
    );
  }

  @override
  List<Object?> get props => [creditcardsliderItemList];
}
