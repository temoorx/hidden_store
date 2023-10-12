import '../../../core/app_export.dart';

/// This class is used in the [superflashsale_item_widget] screen.
class SuperflashsaleItemModel {
  SuperflashsaleItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgProductImage3;
    id = id ?? "";
  }

  String? image;

  String? id;
}
