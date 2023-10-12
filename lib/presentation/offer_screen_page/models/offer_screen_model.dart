// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'offerscreen_item_model.dart';

/// This class defines the variables used in the [offer_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OfferScreenModel extends Equatable {
  OfferScreenModel({this.offerscreenItemList = const []}) {}

  List<OfferscreenItemModel> offerscreenItemList;

  OfferScreenModel copyWith({List<OfferscreenItemModel>? offerscreenItemList}) {
    return OfferScreenModel(
      offerscreenItemList: offerscreenItemList ?? this.offerscreenItemList,
    );
  }

  @override
  List<Object?> get props => [offerscreenItemList];
}
