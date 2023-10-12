// ignore_for_file: must_be_immutable

part of 'credit_card_and_debit_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreditCardAndDebit widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreditCardAndDebitEvent extends Equatable {}

/// Event that is dispatched when the CreditCardAndDebit widget is first created.
class CreditCardAndDebitInitialEvent extends CreditCardAndDebitEvent {
  @override
  List<Object?> get props => [];
}
