// ignore_for_file: must_be_immutable

part of 'add_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddAddressEvent extends Equatable {}

/// Event that is dispatched when the AddAddress widget is first created.
class AddAddressInitialEvent extends AddAddressEvent {
  @override
  List<Object?> get props => [];
}
