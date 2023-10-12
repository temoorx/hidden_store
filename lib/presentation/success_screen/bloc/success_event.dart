// ignore_for_file: must_be_immutable

part of 'success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Success widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuccessEvent extends Equatable {}

/// Event that is dispatched when the Success widget is first created.
class SuccessInitialEvent extends SuccessEvent {
  @override
  List<Object?> get props => [];
}
