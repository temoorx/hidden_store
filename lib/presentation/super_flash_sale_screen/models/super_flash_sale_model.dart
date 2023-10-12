// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'superflashsale_item_model.dart';

/// This class defines the variables used in the [super_flash_sale_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SuperFlashSaleModel extends Equatable {
  SuperFlashSaleModel({this.superflashsaleItemList = const []}) {}

  List<SuperflashsaleItemModel> superflashsaleItemList;

  SuperFlashSaleModel copyWith(
      {List<SuperflashsaleItemModel>? superflashsaleItemList}) {
    return SuperFlashSaleModel(
      superflashsaleItemList:
          superflashsaleItemList ?? this.superflashsaleItemList,
    );
  }

  @override
  List<Object?> get props => [superflashsaleItemList];
}
