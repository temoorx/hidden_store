// ignore_for_file: must_be_immutable

part of 'explore_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Explore widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreEvent extends Equatable {}

/// Event that is dispatched when the Explore widget is first created.
class ExploreInitialEvent extends ExploreEvent {
  @override
  List<Object?> get props => [];
}
