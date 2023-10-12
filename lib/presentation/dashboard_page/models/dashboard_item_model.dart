import '../../../core/app_export.dart';

/// This class is used in the [dashboard_item_widget] screen.
class DashboardItemModel {
  DashboardItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImageProduct;
    id = id ?? "";
  }

  String? image;

  String? id;
}
