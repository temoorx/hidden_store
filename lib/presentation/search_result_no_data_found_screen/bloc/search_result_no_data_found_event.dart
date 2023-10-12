// ignore_for_file: must_be_immutable

part of 'search_result_no_data_found_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultNoDataFound widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultNoDataFoundEvent extends Equatable {}

/// Event that is dispatched when the SearchResultNoDataFound widget is first created.
class SearchResultNoDataFoundInitialEvent extends SearchResultNoDataFoundEvent {
  @override
  List<Object?> get props => [];
}
