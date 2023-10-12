import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationfeed_item_model.dart';
import 'package:hidden_store/presentation/notification_feed_screen/models/notification_feed_model.dart';
part 'notification_feed_event.dart';
part 'notification_feed_state.dart';

/// A bloc that manages the state of a NotificationFeed according to the event that is dispatched to it.
class NotificationFeedBloc
    extends Bloc<NotificationFeedEvent, NotificationFeedState> {
  NotificationFeedBloc(NotificationFeedState initialState)
      : super(initialState) {
    on<NotificationFeedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationFeedInitialEvent event,
    Emitter<NotificationFeedState> emit,
  ) async {
    emit(state.copyWith(
        notificationFeedModelObj: state.notificationFeedModelObj?.copyWith(
            notificationfeedItemList: fillNotificationfeedItemList())));
  }

  List<NotificationfeedItemModel> fillNotificationfeedItemList() {
    return [
      NotificationfeedItemModel(
          newProduct: ImageConstant.imgProductImage,
          newProduct1: "New Product"),
      NotificationfeedItemModel(
          newProduct: ImageConstant.imgImageProduct,
          newProduct1: "Best Product"),
      NotificationfeedItemModel(
          newProduct: ImageConstant.imgProductImage1,
          newProduct1: "New Product")
    ];
  }
}
