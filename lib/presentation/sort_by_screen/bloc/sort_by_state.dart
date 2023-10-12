// ignore_for_file: must_be_immutable

part of 'sort_by_bloc.dart';

/// Represents the state of SortBy in the application.
class SortByState extends Equatable {
  SortByState({this.sortByModelObj});

  SortByModel? sortByModelObj;

  @override
  List<Object?> get props => [
        sortByModelObj,
      ];
  SortByState copyWith({SortByModel? sortByModelObj}) {
    return SortByState(
      sortByModelObj: sortByModelObj ?? this.sortByModelObj,
    );
  }
}
