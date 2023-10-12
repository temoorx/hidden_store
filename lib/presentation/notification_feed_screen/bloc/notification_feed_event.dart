// ignore_for_file: must_be_immutable

part of 'notification_feed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationFeed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationFeedEvent extends Equatable {}

/// Event that is dispatched when the NotificationFeed widget is first created.
class NotificationFeedInitialEvent extends NotificationFeedEvent {
  @override
  List<Object?> get props => [];
}
