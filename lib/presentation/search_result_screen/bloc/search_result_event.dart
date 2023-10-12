// ignore_for_file: must_be_immutable

part of 'search_result_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResult widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultEvent extends Equatable {}

/// Event that is dispatched when the SearchResult widget is first created.
class SearchResultInitialEvent extends SearchResultEvent {
  @override
  List<Object?> get props => [];
}
