// ignore_for_file: must_be_immutable

part of 'search_result_bloc.dart';

/// Represents the state of SearchResult in the application.
class SearchResultState extends Equatable {
  SearchResultState({
    this.searchController,
    this.searchResultModelObj,
  });

  TextEditingController? searchController;

  SearchResultModel? searchResultModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultModelObj,
      ];
  SearchResultState copyWith({
    TextEditingController? searchController,
    SearchResultModel? searchResultModelObj,
  }) {
    return SearchResultState(
      searchController: searchController ?? this.searchController,
      searchResultModelObj: searchResultModelObj ?? this.searchResultModelObj,
    );
  }
}
