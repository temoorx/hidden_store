// ignore_for_file: must_be_immutable

part of 'account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Account widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountEvent extends Equatable {}

/// Event that is dispatched when the Account widget is first created.
class AccountInitialEvent extends AccountEvent {
  @override
  List<Object?> get props => [];
}
