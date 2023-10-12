// ignore_for_file: must_be_immutable

part of 'favorite_product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FavoriteProduct widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FavoriteProductEvent extends Equatable {}

/// Event that is dispatched when the FavoriteProduct widget is first created.
class FavoriteProductInitialEvent extends FavoriteProductEvent {
  @override
  List<Object?> get props => [];
}
