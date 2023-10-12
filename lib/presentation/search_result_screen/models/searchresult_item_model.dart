import '../../../core/app_export.dart';

/// This class is used in the [searchresult_item_widget] screen.
class SearchresultItemModel {
  SearchresultItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgProductImage1;
    id = id ?? "";
  }

  String? image;

  String? id;
}
