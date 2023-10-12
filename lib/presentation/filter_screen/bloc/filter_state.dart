// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Represents the state of Filter in the application.
class FilterState extends Equatable {
  FilterState({
    this.priceController,
    this.priceController1,
    this.filterModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceController1;

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        priceController,
        priceController1,
        filterModelObj,
      ];
  FilterState copyWith({
    TextEditingController? priceController,
    TextEditingController? priceController1,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
