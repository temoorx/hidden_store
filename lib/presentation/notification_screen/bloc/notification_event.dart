// ignore_for_file: must_be_immutable

part of 'notification_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Notification widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationEvent extends Equatable {}

/// Event that is dispatched when the Notification widget is first created.
class NotificationInitialEvent extends NotificationEvent {
  @override
  List<Object?> get props => [];
}
