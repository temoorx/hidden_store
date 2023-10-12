// ignore_for_file: must_be_immutable

part of 'order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Order widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderEvent extends Equatable {}

/// Event that is dispatched when the Order widget is first created.
class OrderInitialEvent extends OrderEvent {
  @override
  List<Object?> get props => [];
}
