// ignore_for_file: must_be_immutable

part of 'offer_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OfferScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OfferScreenEvent extends Equatable {}

/// Event that is dispatched when the OfferScreen widget is first created.
class OfferScreenInitialEvent extends OfferScreenEvent {
  @override
  List<Object?> get props => [];
}
