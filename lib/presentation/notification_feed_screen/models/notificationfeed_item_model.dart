import '../../../core/app_export.dart';

/// This class is used in the [notificationfeed_item_widget] screen.
class NotificationfeedItemModel {
  NotificationfeedItemModel({
    this.newProduct,
    this.newProduct1,
    this.id,
  }) {
    newProduct = newProduct ?? ImageConstant.imgProductImage;
    newProduct1 = newProduct1 ?? "New Product";
    id = id ?? "";
  }

  String? newProduct;

  String? newProduct1;

  String? id;
}
