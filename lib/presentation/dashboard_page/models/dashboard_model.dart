// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'slider_item_model.dart';
import '../../../core/app_export.dart';
import 'categories_item_model.dart';
import 'fsnikeairmax_item_model.dart';
import 'msnikeairmax_item_model.dart';
import 'dashboard_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({
    this.sliderItemList = const [],
    this.categoriesItemList = const [],
    this.fsnikeairmaxItemList = const [],
    this.msnikeairmaxItemList = const [],
    this.dashboardItemList = const [],
  }) {}

  List<SliderItemModel> sliderItemList;

  List<CategoriesItemModel> categoriesItemList;

  List<FsnikeairmaxItemModel> fsnikeairmaxItemList;

  List<MsnikeairmaxItemModel> msnikeairmaxItemList;

  List<DashboardItemModel> dashboardItemList;

  DashboardModel copyWith({
    List<SliderItemModel>? sliderItemList,
    List<CategoriesItemModel>? categoriesItemList,
    List<FsnikeairmaxItemModel>? fsnikeairmaxItemList,
    List<MsnikeairmaxItemModel>? msnikeairmaxItemList,
    List<DashboardItemModel>? dashboardItemList,
  }) {
    return DashboardModel(
      sliderItemList: sliderItemList ?? this.sliderItemList,
      categoriesItemList: categoriesItemList ?? this.categoriesItemList,
      fsnikeairmaxItemList: fsnikeairmaxItemList ?? this.fsnikeairmaxItemList,
      msnikeairmaxItemList: msnikeairmaxItemList ?? this.msnikeairmaxItemList,
      dashboardItemList: dashboardItemList ?? this.dashboardItemList,
    );
  }

  @override
  List<Object?> get props => [
        sliderItemList,
        categoriesItemList,
        fsnikeairmaxItemList,
        msnikeairmaxItemList,
        dashboardItemList
      ];
}
