import '../../../core/app_export.dart';

/// This class is used in the [offerscreen_item_widget] screen.
class OfferscreenItemModel {
  OfferscreenItemModel({
    this.image,
    this.offer,
    this.hours,
    this.minutes,
    this.secounds,
    this.id,
  }) {
    image = image ?? ImageConstant.imgPromotionImage;
    offer = offer ?? "Super Flash Sale\n50% Off";
    hours = hours ?? "08";
    minutes = minutes ?? "34";
    secounds = secounds ?? "52";
    id = id ?? "";
  }

  String? image;

  String? offer;

  String? hours;

  String? minutes;

  String? secounds;

  String? id;
}
