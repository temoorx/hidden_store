// ignore_for_file: must_be_immutable

part of 'ship_to_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShipTo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShipToEvent extends Equatable {}

/// Event that is dispatched when the ShipTo widget is first created.
class ShipToInitialEvent extends ShipToEvent {
  @override
  List<Object?> get props => [];
}
