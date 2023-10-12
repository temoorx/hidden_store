import '../../../core/app_export.dart';

/// This class is used in the [msnikeairmax_item_widget] screen.
class MsnikeairmaxItemModel {
  MsnikeairmaxItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgProductImage2;
    id = id ?? "";
  }

  String? image;

  String? id;
}
