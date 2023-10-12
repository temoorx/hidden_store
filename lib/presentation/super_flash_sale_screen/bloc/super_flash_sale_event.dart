// ignore_for_file: must_be_immutable

part of 'super_flash_sale_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuperFlashSale widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuperFlashSaleEvent extends Equatable {}

/// Event that is dispatched when the SuperFlashSale widget is first created.
class SuperFlashSaleInitialEvent extends SuperFlashSaleEvent {
  @override
  List<Object?> get props => [];
}
