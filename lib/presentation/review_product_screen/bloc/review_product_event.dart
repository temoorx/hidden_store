// ignore_for_file: must_be_immutable

part of 'review_product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewProduct widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewProductEvent extends Equatable {}

/// Event that is dispatched when the ReviewProduct widget is first created.
class ReviewProductInitialEvent extends ReviewProductEvent {
  @override
  List<Object?> get props => [];
}
