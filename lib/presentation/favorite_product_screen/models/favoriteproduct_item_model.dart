import '../../../core/app_export.dart';

/// This class is used in the [favoriteproduct_item_widget] screen.
class FavoriteproductItemModel {
  FavoriteproductItemModel({
    this.image,
    this.image1,
    this.id,
  }) {
    image = image ?? ImageConstant.imgProductImage2;
    image1 = image1 ?? ImageConstant.imgTrashIcon;
    id = id ?? "";
  }

  String? image;

  String? image1;

  String? id;
}
