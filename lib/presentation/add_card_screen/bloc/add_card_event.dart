// ignore_for_file: must_be_immutable

part of 'add_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddCardEvent extends Equatable {}

/// Event that is dispatched when the AddCard widget is first created.
class AddCardInitialEvent extends AddCardEvent {
  @override
  List<Object?> get props => [];
}
