import '../../../core/app_export.dart';

/// This class is used in the [categories_item_widget] screen.
class CategoriesItemModel {
  CategoriesItemModel({
    this.arrowLeft,
    this.manShirt,
    this.id,
  }) {
    arrowLeft = arrowLeft ?? ImageConstant.imgArrowLeftPrimary;
    manShirt = manShirt ?? "Man Shirt";
    id = id ?? "";
  }

  String? arrowLeft;

  String? manShirt;

  String? id;
}
