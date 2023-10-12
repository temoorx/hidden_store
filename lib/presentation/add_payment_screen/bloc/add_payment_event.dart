// ignore_for_file: must_be_immutable

part of 'add_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddPayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddPaymentEvent extends Equatable {}

/// Event that is dispatched when the AddPayment widget is first created.
class AddPaymentInitialEvent extends AddPaymentEvent {
  @override
  List<Object?> get props => [];
}
