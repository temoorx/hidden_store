import '../order_details_screen/widgets/orderdetails_item_widget.dart';
import 'bloc/order_details_bloc.dart';
import 'models/order_details_model.dart';
import 'models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:hidden_store/widgets/app_bar/appbar_subtitle.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:hidden_store/widgets/custom_elevated_button.dart';
import 'package:hidden_store/widgets/custom_icon_button.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderDetailsBloc>(
        create: (context) => OrderDetailsBloc(
            OrderDetailsState(orderDetailsModelObj: OrderDetailsModel()))
          ..add(OrderDetailsInitialEvent()),
        child: OrderDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 27.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(children: [
                                _buildTracking(context),
                                SizedBox(height: 24.v),
                                _buildProduct(context),
                                SizedBox(height: 24.v),
                                _buildShippingDetails(context),
                                SizedBox(height: 46.v),
                                _buildPaymentDetails(context)
                              ])))),
                  SizedBox(height: 50.v)
                ])),
            bottomNavigationBar: _buildNotifyMe(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_order_details".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildTracking(BuildContext context) {
    return SizedBox(
        height: 57.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: 96.h,
                            child: Divider(
                                color:
                                    theme.colorScheme.primary.withOpacity(1))),
                        SizedBox(
                            width: 96.h,
                            child: Divider(
                                color:
                                    theme.colorScheme.primary.withOpacity(1))),
                        SizedBox(width: 96.h, child: Divider())
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillPrimaryTL12,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPacing)),
                      SizedBox(height: 15.v),
                      Text("lbl_packing".tr, style: theme.textTheme.bodySmall)
                    ]),
                    Column(children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillPrimaryTL12,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPacing)),
                      SizedBox(height: 15.v),
                      Text("lbl_shipping".tr, style: theme.textTheme.bodySmall)
                    ]),
                    Column(children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillPrimaryTL12,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPacing)),
                      SizedBox(height: 15.v),
                      Text("lbl_arriving".tr, style: theme.textTheme.bodySmall)
                    ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCheckmarkBlue50,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 13.h)),
                          SizedBox(height: 13.v),
                          Text("lbl_success".tr,
                              style: theme.textTheme.bodySmall)
                        ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildProduct(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_product".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: BlocSelector<OrderDetailsBloc, OrderDetailsState,
                  OrderDetailsModel?>(
              selector: (state) => state.orderDetailsModelObj,
              builder: (context, orderDetailsModelObj) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 8.v);
                    },
                    itemCount:
                        orderDetailsModelObj?.orderdetailsItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      OrderdetailsItemModel model =
                          orderDetailsModelObj?.orderdetailsItemList[index] ??
                              OrderdetailsItemModel();
                      return OrderdetailsItemWidget(model);
                    });
              }))
    ]);
  }

  /// Section Widget
  Widget _buildShippingDetails(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("msg_shipping_details".tr,
              style: theme.textTheme.titleSmall)),
      SizedBox(height: 11.v),
      Container(
          margin: EdgeInsets.only(left: 2.h),
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
          decoration: AppDecoration.outlineBlue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Opacity(
                  opacity: 0.5,
                  child: Text("lbl_date_shipping".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_1)),
              Text("msg_january_16_2020".tr,
                  style: CustomTextStyles.bodySmallOnPrimary)
            ]),
            SizedBox(height: 15.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Opacity(
                  opacity: 0.5,
                  child: Text("lbl_shipping".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_1)),
              Text("lbl_pos_reggular".tr,
                  style: CustomTextStyles.bodySmallOnPrimary)
            ]),
            SizedBox(height: 14.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Opacity(
                  opacity: 0.5,
                  child: Text("lbl_no_resi".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_1)),
              Text("lbl_000192848573".tr,
                  style: CustomTextStyles.bodySmallOnPrimary)
            ]),
            SizedBox(height: 15.v),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                      opacity: 0.5,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 22.v),
                          child: Text("lbl_address".tr,
                              style: CustomTextStyles.bodySmallOnPrimary_1))),
                  Container(
                      width: 160.h,
                      margin: EdgeInsets.only(left: 98.h),
                      child: Text("msg_2727_new_owerri".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: CustomTextStyles.bodySmallOnPrimary
                              .copyWith(height: 1.80)))
                ])
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildPaymentDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("lbl_payment_details".tr,
                  style: theme.textTheme.titleSmall)),
          SizedBox(height: 11.v),
          Container(
              padding: EdgeInsets.all(15.h),
              decoration: AppDecoration.outlineBlue
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_items_3".tr,
                              style: theme.textTheme.bodySmall),
                          Text("lbl_598_86".tr,
                              style: CustomTextStyles.bodySmallOnPrimary)
                        ]),
                    SizedBox(height: 16.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text("lbl_shipping".tr,
                                  style: theme.textTheme.bodySmall)),
                          Text("lbl_40_00".tr,
                              style: CustomTextStyles.bodySmallOnPrimary)
                        ]),
                    SizedBox(height: 14.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text("lbl_import_charges".tr,
                                  style: theme.textTheme.bodySmall)),
                          Text("lbl_128_00".tr,
                              style: CustomTextStyles.bodySmallOnPrimary)
                        ]),
                    SizedBox(height: 12.v),
                    Divider(),
                    SizedBox(height: 10.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_total_price".tr,
                              style: theme.textTheme.labelLarge),
                          Text("lbl_766_86".tr,
                              style: CustomTextStyles.labelLargePrimary)
                        ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildNotifyMe(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_notify_me".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h));
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
}
