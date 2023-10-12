// ignore_for_file: must_be_immutable

part of 'list_category_bloc.dart';

/// Represents the state of ListCategory in the application.
class ListCategoryState extends Equatable {
  ListCategoryState({this.listCategoryModelObj});

  ListCategoryModel? listCategoryModelObj;

  @override
  List<Object?> get props => [
        listCategoryModelObj,
      ];
  ListCategoryState copyWith({ListCategoryModel? listCategoryModelObj}) {
    return ListCategoryState(
      listCategoryModelObj: listCategoryModelObj ?? this.listCategoryModelObj,
    );
  }
}
