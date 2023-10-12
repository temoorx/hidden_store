// ignore_for_file: must_be_immutable

part of 'sort_by_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SortBy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SortByEvent extends Equatable {}

/// Event that is dispatched when the SortBy widget is first created.
class SortByInitialEvent extends SortByEvent {
  @override
  List<Object?> get props => [];
}
