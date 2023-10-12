// ignore_for_file: must_be_immutable

part of 'notification_offer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationOffer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationOfferEvent extends Equatable {}

/// Event that is dispatched when the NotificationOffer widget is first created.
class NotificationOfferInitialEvent extends NotificationOfferEvent {
  @override
  List<Object?> get props => [];
}
