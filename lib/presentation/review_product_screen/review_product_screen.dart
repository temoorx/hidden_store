import 'bloc/review_product_bloc.dart';
import 'models/review_product_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:hidden_store/widgets/app_bar/appbar_subtitle.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:hidden_store/widgets/custom_elevated_button.dart';
import 'package:hidden_store/widgets/custom_rating_bar.dart';

class ReviewProductScreen extends StatelessWidget {
  const ReviewProductScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewProductBloc>(
        create: (context) => ReviewProductBloc(
            ReviewProductState(reviewProductModelObj: ReviewProductModel()))
          ..add(ReviewProductInitialEvent()),
        child: ReviewProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ReviewProductBloc, ReviewProductState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 9.v),
                  child: Column(children: [
                    SizedBox(height: 18.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 19.h, right: 23.h, bottom: 5.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgProfilePicture,
                                            height: 48.adaptSize,
                                            width: 48.adaptSize,
                                            radius:
                                                BorderRadius.circular(24.h)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 4.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_james_lawson".tr,
                                                      style: theme.textTheme
                                                          .titleSmall),
                                                  SizedBox(height: 4.v),
                                                  CustomRatingBar(
                                                      initialRating: 5,
                                                      itemSize: 16)
                                                ]))
                                      ]),
                                      SizedBox(height: 18.v),
                                      SizedBox(
                                          width: 333.h,
                                          child: Text(
                                              "msg_air_max_are_always".tr,
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall!
                                                  .copyWith(height: 1.80))),
                                      SizedBox(height: 16.v),
                                      Text("msg_december_10_2016".tr,
                                          style: CustomTextStyles.bodySmall10),
                                      SizedBox(height: 32.v),
                                      _buildProfilePicture(context,
                                          userName: "lbl_laura_octavian".tr),
                                      SizedBox(height: 18.v),
                                      Container(
                                          width: 317.h,
                                          margin: EdgeInsets.only(right: 15.h),
                                          child: Text(
                                              "msg_this_is_really_amazing".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall!
                                                  .copyWith(height: 1.80))),
                                      SizedBox(height: 16.v),
                                      Text("msg_december_10_2016".tr,
                                          style: CustomTextStyles.bodySmall10),
                                      SizedBox(height: 34.v),
                                      _buildProfilePicture1(context,
                                          userName: "lbl_jhonson_bridge".tr),
                                      SizedBox(height: 18.v),
                                      SizedBox(
                                          width: 331.h,
                                          child: Text(
                                              "msg_air_max_are_always2".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall!
                                                  .copyWith(height: 1.80))),
                                      SizedBox(height: 16.v),
                                      Text("msg_december_10_2016".tr,
                                          style: CustomTextStyles.bodySmall10),
                                      SizedBox(height: 26.v),
                                      _buildProfilePicture(context,
                                          userName: "lbl_laura_octavian".tr),
                                      SizedBox(height: 18.v),
                                      Container(
                                          width: 317.h,
                                          margin: EdgeInsets.only(right: 15.h),
                                          child: Text(
                                              "msg_this_is_really_amazing".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall!
                                                  .copyWith(height: 1.80))),
                                      SizedBox(height: 16.v),
                                      Text("msg_december_10_2016".tr,
                                          style: CustomTextStyles.bodySmall10),
                                      SizedBox(height: 34.v),
                                      _buildProfilePicture1(context,
                                          userName: "lbl_jhonson_bridge".tr),
                                      SizedBox(height: 18.v),
                                      SizedBox(
                                          width: 331.h,
                                          child: Text(
                                              "msg_air_max_are_always2".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall!
                                                  .copyWith(height: 1.80))),
                                      SizedBox(height: 16.v),
                                      Text("msg_december_10_2016".tr,
                                          style: CustomTextStyles.bodySmall10)
                                    ])))),
                    SizedBox(height: 58.v)
                  ])),
              bottomNavigationBar: _buildWriteReview(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_5_review2".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildWriteReview(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_write_review".tr,
        margin: EdgeInsets.only(left: 19.h, right: 13.h),
        onPressed: () {
          onTapWriteReview(context);
        });
  }

  /// Common widget
  Widget _buildProfilePicture(
    BuildContext context, {
    required String userName,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgProfilePicture48x48,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(24.h)),
      Padding(
          padding: EdgeInsets.only(left: 16.h, bottom: 4.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(userName,
                style: theme.textTheme.titleSmall!.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1))),
            SizedBox(height: 5.v),
            CustomRatingBar(initialRating: 4, itemSize: 16)
          ]))
    ]);
  }

  /// Common widget
  Widget _buildProfilePicture1(
    BuildContext context, {
    required String userName,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgProfilePicture1,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(24.h)),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 4.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(userName,
                style: theme.textTheme.titleSmall!.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1))),
            SizedBox(height: 3.v),
            CustomRatingBar(initialRating: 5, itemSize: 16)
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the writeReviewFillScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the writeReviewFillScreen.
  onTapWriteReview(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.writeReviewFillScreen,
    );
  }
}
