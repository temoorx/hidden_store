// ignore_for_file: must_be_immutable

part of 'lailyfa_febrina_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LailyfaFebrinaCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LailyfaFebrinaCardEvent extends Equatable {}

/// Event that is dispatched when the LailyfaFebrinaCard widget is first created.
class LailyfaFebrinaCardInitialEvent extends LailyfaFebrinaCardEvent {
  @override
  List<Object?> get props => [];
}
