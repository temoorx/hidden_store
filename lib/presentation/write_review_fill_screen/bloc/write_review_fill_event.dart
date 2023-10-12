// ignore_for_file: must_be_immutable

part of 'write_review_fill_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WriteReviewFill widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WriteReviewFillEvent extends Equatable {}

/// Event that is dispatched when the WriteReviewFill widget is first created.
class WriteReviewFillInitialEvent extends WriteReviewFillEvent {
  @override
  List<Object?> get props => [];
}
