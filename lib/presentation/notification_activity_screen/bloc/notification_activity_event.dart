// ignore_for_file: must_be_immutable

part of 'notification_activity_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationActivity widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationActivityEvent extends Equatable {}

/// Event that is dispatched when the NotificationActivity widget is first created.
class NotificationActivityInitialEvent extends NotificationActivityEvent {
  @override
  List<Object?> get props => [];
}
