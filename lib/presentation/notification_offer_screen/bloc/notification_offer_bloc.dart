import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hidden_store/presentation/notification_offer_screen/models/notification_offer_model.dart';
part 'notification_offer_event.dart';
part 'notification_offer_state.dart';

/// A bloc that manages the state of a NotificationOffer according to the event that is dispatched to it.
class NotificationOfferBloc
    extends Bloc<NotificationOfferEvent, NotificationOfferState> {
  NotificationOfferBloc(NotificationOfferState initialState)
      : super(initialState) {
    on<NotificationOfferInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationOfferInitialEvent event,
    Emitter<NotificationOfferState> emit,
  ) async {}
}
