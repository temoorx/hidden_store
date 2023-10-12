// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'manworkequipment_item_model.dart';
import 'womantshirticon_item_model.dart';

/// This class defines the variables used in the [explore_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel extends Equatable {
  ExploreModel({
    this.manworkequipmentItemList = const [],
    this.womantshirticonItemList = const [],
  }) {}

  List<ManworkequipmentItemModel> manworkequipmentItemList;

  List<WomantshirticonItemModel> womantshirticonItemList;

  ExploreModel copyWith({
    List<ManworkequipmentItemModel>? manworkequipmentItemList,
    List<WomantshirticonItemModel>? womantshirticonItemList,
  }) {
    return ExploreModel(
      manworkequipmentItemList:
          manworkequipmentItemList ?? this.manworkequipmentItemList,
      womantshirticonItemList:
          womantshirticonItemList ?? this.womantshirticonItemList,
    );
  }

  @override
  List<Object?> get props =>
      [manworkequipmentItemList, womantshirticonItemList];
}
