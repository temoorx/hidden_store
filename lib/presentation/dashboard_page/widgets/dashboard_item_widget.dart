import '../models/dashboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  DashboardItemWidget(
    this.dashboardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DashboardItemModel dashboardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: dashboardItemModelObj?.image,
            height: 133.adaptSize,
            width: 133.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 107.h,
            child: Text(
              "msg_nike_air_max_270".tr,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 4,
          ),
          SizedBox(height: 18.v),
          Text(
            "lbl_299_43".tr,
            style: CustomTextStyles.labelLargePrimary,
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              Text(
                "lbl_534_33".tr,
                style: CustomTextStyles.bodySmall10.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "lbl_24_off".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
