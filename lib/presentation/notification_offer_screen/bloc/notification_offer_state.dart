// ignore_for_file: must_be_immutable

part of 'notification_offer_bloc.dart';

/// Represents the state of NotificationOffer in the application.
class NotificationOfferState extends Equatable {
  NotificationOfferState({this.notificationOfferModelObj});

  NotificationOfferModel? notificationOfferModelObj;

  @override
  List<Object?> get props => [
        notificationOfferModelObj,
      ];
  NotificationOfferState copyWith(
      {NotificationOfferModel? notificationOfferModelObj}) {
    return NotificationOfferState(
      notificationOfferModelObj:
          notificationOfferModelObj ?? this.notificationOfferModelObj,
    );
  }
}
