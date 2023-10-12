// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchresult_item_model.dart';

/// This class defines the variables used in the [search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultModel extends Equatable {
  SearchResultModel({this.searchresultItemList = const []}) {}

  List<SearchresultItemModel> searchresultItemList;

  SearchResultModel copyWith(
      {List<SearchresultItemModel>? searchresultItemList}) {
    return SearchResultModel(
      searchresultItemList: searchresultItemList ?? this.searchresultItemList,
    );
  }

  @override
  List<Object?> get props => [searchresultItemList];
}
