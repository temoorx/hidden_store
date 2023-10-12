// ignore_for_file: must_be_immutable

part of 'search_result_no_data_found_bloc.dart';

/// Represents the state of SearchResultNoDataFound in the application.
class SearchResultNoDataFoundState extends Equatable {
  SearchResultNoDataFoundState({
    this.searchController,
    this.searchResultNoDataFoundModelObj,
  });

  TextEditingController? searchController;

  SearchResultNoDataFoundModel? searchResultNoDataFoundModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultNoDataFoundModelObj,
      ];
  SearchResultNoDataFoundState copyWith({
    TextEditingController? searchController,
    SearchResultNoDataFoundModel? searchResultNoDataFoundModelObj,
  }) {
    return SearchResultNoDataFoundState(
      searchController: searchController ?? this.searchController,
      searchResultNoDataFoundModelObj: searchResultNoDataFoundModelObj ??
          this.searchResultNoDataFoundModelObj,
    );
  }
}
