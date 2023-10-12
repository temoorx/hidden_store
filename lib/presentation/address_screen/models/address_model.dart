// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'addresslist_item_model.dart';

/// This class defines the variables used in the [address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddressModel extends Equatable {
  AddressModel({this.addresslistItemList = const []}) {}

  List<AddresslistItemModel> addresslistItemList;

  AddressModel copyWith({List<AddresslistItemModel>? addresslistItemList}) {
    return AddressModel(
      addresslistItemList: addresslistItemList ?? this.addresslistItemList,
    );
  }

  @override
  List<Object?> get props => [addresslistItemList];
}
