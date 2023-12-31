import '../models/addresslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';

// ignore: must_be_immutable
class AddresslistItemWidget extends StatelessWidget {
  AddresslistItemWidget(
    this.addresslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddresslistItemModel addresslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            addresslistItemModelObj.priscekila!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 19.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(right: 30.h),
            child: Text(
              "msg_3711_spring_hill".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.80,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Text(
            "lbl_99_1234567890".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 19.v),
          Row(
            children: [
              Text(
                "lbl_edit".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Text(
                  "lbl_delete".tr,
                  style: CustomTextStyles.titleSmallPink300,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
