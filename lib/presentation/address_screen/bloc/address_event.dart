// ignore_for_file: must_be_immutable

part of 'address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Address widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddressEvent extends Equatable {}

/// Event that is dispatched when the Address widget is first created.
class AddressInitialEvent extends AddressEvent {
  @override
  List<Object?> get props => [];
}
