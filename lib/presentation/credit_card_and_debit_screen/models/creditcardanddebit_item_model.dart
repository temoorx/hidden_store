import '../../../core/app_export.dart';

/// This class is used in the [creditcardanddebit_item_widget] screen.
class CreditcardanddebitItemModel {
  CreditcardanddebitItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgVolume;
    id = id ?? "";
  }

  String? image;

  String? id;
}
