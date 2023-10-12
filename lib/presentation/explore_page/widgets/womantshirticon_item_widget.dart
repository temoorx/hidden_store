import '../models/womantshirticon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class WomantshirticonItemWidget extends StatelessWidget {
  WomantshirticonItemWidget(
    this.womantshirticonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WomantshirticonItemModel womantshirticonItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            imagePath: womantshirticonItemModelObj?.womanTShirtIcon,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          womantshirticonItemModelObj.tShirt!,
          style: CustomTextStyles.labelMediumBluegray300,
        ),
      ],
    );
  }
}
