import '../offer_screen_page/widgets/offerscreen_item_widget.dart';
import 'bloc/offer_screen_bloc.dart';
import 'models/offer_screen_model.dart';
import 'models/offerscreen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_title.dart';
import 'package:hidden_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';

class OfferScreenPage extends StatelessWidget {
  const OfferScreenPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OfferScreenBloc>(
        create: (context) => OfferScreenBloc(
            OfferScreenState(offerScreenModelObj: OfferScreenModel()))
          ..add(OfferScreenInitialEvent()),
        child: OfferScreenPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                child: Column(children: [
                  _buildCuponPromotion(context),
                  SizedBox(height: 16.v),
                  _buildOfferScreen(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_offer".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotificationIcon,
              margin: EdgeInsets.fromLTRB(13.h, 16.v, 13.h, 15.v),
              onTap: () {
                onTapNotificationIcon(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildCuponPromotion(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: SizedBox(
            width: 201.h,
            child: Text("msg_use_megsl_cupon".tr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumOnPrimaryContainer
                    .copyWith(height: 1.50))));
  }

  /// Section Widget
  Widget _buildOfferScreen(BuildContext context) {
    return Expanded(
        child:
            BlocSelector<OfferScreenBloc, OfferScreenState, OfferScreenModel?>(
                selector: (state) => state.offerScreenModelObj,
                builder: (context, offerScreenModelObj) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount:
                          offerScreenModelObj?.offerscreenItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        OfferscreenItemModel model =
                            offerScreenModelObj?.offerscreenItemList[index] ??
                                OfferscreenItemModel();
                        return OfferscreenItemWidget(model);
                      });
                }));
  }

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationScreen.
  onTapNotificationIcon(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }
}
