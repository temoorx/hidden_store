// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'notificationfeed_item_model.dart';

/// This class defines the variables used in the [notification_feed_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationFeedModel extends Equatable {
  NotificationFeedModel({this.notificationfeedItemList = const []}) {}

  List<NotificationfeedItemModel> notificationfeedItemList;

  NotificationFeedModel copyWith(
      {List<NotificationfeedItemModel>? notificationfeedItemList}) {
    return NotificationFeedModel(
      notificationfeedItemList:
          notificationfeedItemList ?? this.notificationfeedItemList,
    );
  }

  @override
  List<Object?> get props => [notificationfeedItemList];
}
