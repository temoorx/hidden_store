import '../models/fortyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';

// ignore: must_be_immutable
class FortyeightItemWidget extends StatelessWidget {
  FortyeightItemWidget(
    this.fortyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortyeightItemModel fortyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductImage238x375,
      height: 238.v,
      width: 375.h,
    );
  }
}
