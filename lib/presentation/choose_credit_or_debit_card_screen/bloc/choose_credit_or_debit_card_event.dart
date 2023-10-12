// ignore_for_file: must_be_immutable

part of 'choose_credit_or_debit_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseCreditOrDebitCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseCreditOrDebitCardEvent extends Equatable {}

/// Event that is dispatched when the ChooseCreditOrDebitCard widget is first created.
class ChooseCreditOrDebitCardInitialEvent extends ChooseCreditOrDebitCardEvent {
  @override
  List<Object?> get props => [];
}
