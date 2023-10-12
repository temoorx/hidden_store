// ignore_for_file: must_be_immutable

part of 'list_category_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListCategory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListCategoryEvent extends Equatable {}

/// Event that is dispatched when the ListCategory widget is first created.
class ListCategoryInitialEvent extends ListCategoryEvent {
  @override
  List<Object?> get props => [];
}
