import '../../../core/app_export.dart';

/// This class is used in the [products_item_widget] screen.
class ProductsItemModel {
  ProductsItemModel({
    this.productPicture,
    this.id,
  }) {
    productPicture = productPicture ?? ImageConstant.imgProductPicture02;
    id = id ?? "";
  }

  String? productPicture;

  String? id;
}
