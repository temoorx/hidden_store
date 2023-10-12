// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel extends Equatable {
  NotificationModel() {}

  NotificationModel copyWith() {
    return NotificationModel();
  }

  @override
  List<Object?> get props => [];
}
