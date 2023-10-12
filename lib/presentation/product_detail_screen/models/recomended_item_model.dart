import '../../../core/app_export.dart';

/// This class is used in the [recomended_item_widget] screen.
class RecomendedItemModel {
  RecomendedItemModel({
    this.image,
    this.fSNikeAirMax,
    this.id,
  }) {
    image = image ?? ImageConstant.imgProductImage;
    fSNikeAirMax = fSNikeAirMax ?? "FS - Nike Air Max 270 React...";
    id = id ?? "";
  }

  String? image;

  String? fSNikeAirMax;

  String? id;
}
