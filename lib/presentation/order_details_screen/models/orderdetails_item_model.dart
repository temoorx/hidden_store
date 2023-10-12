import '../../../core/app_export.dart';

/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {
  OrderdetailsItemModel({
    this.image,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImageProduct;
    image1 = image1 ?? ImageConstant.imgLoveIcon;
    image2 = image2 ?? ImageConstant.imgTrashIcon;
    image3 = image3 ?? ImageConstant.imgFolder;
    image4 = image4 ?? ImageConstant.imgPlus;
    id = id ?? "";
  }

  String? image;

  String? image1;

  String? image2;

  String? image3;

  String? image4;

  String? id;
}
