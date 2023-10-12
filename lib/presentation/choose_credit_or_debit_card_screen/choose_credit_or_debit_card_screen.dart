import '../choose_credit_or_debit_card_screen/widgets/creditcardslider_item_widget.dart';
import 'bloc/choose_credit_or_debit_card_bloc.dart';
import 'models/choose_credit_or_debit_card_model.dart';
import 'models/creditcardslider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:hidden_store/widgets/app_bar/appbar_subtitle.dart';
import 'package:hidden_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:hidden_store/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChooseCreditOrDebitCardScreen extends StatelessWidget {
  const ChooseCreditOrDebitCardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseCreditOrDebitCardBloc>(
        create: (context) => ChooseCreditOrDebitCardBloc(
            ChooseCreditOrDebitCardState(
                chooseCreditOrDebitCardModelObj:
                    ChooseCreditOrDebitCardModel()))
          ..add(ChooseCreditOrDebitCardInitialEvent()),
        child: ChooseCreditOrDebitCardScreen());
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
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 27.v),
                      child: Column(children: [
                        _buildCreditCardSlider(context),
                        SizedBox(height: 16.v),
                        BlocBuilder<ChooseCreditOrDebitCardBloc,
                                ChooseCreditOrDebitCardState>(
                            builder: (context, state) {
                          return SizedBox(
                              height: 8.v,
                              child: AnimatedSmoothIndicator(
                                  activeIndex: state.sliderIndex,
                                  count: state.chooseCreditOrDebitCardModelObj
                                          ?.creditcardsliderItemList.length ??
                                      0,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 8,
                                      activeDotColor: theme.colorScheme.primary
                                          .withOpacity(1),
                                      dotColor: appTheme.blue50,
                                      dotHeight: 8.v,
                                      dotWidth: 8.h)));
                        }),
                        SizedBox(height: 5.v)
                      ])),
                  SizedBox(height: 50.v)
                ])),
            bottomNavigationBar: _buildPayButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_choose_card".tr, margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPlusIcon,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildCreditCardSlider(BuildContext context) {
    return BlocBuilder<ChooseCreditOrDebitCardBloc,
        ChooseCreditOrDebitCardState>(builder: (context, state) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 190.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                state.sliderIndex = index;
              }),
          itemCount: state.chooseCreditOrDebitCardModelObj
                  ?.creditcardsliderItemList.length ??
              0,
          itemBuilder: (context, index, realIndex) {
            CreditcardsliderItemModel model = state
                    .chooseCreditOrDebitCardModelObj
                    ?.creditcardsliderItemList[index] ??
                CreditcardsliderItemModel();
            return CreditcardsliderItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildPayButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_pay_766_86".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        onPressed: () {
          onTapPayButton(context);
        });
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

  /// Navigates to the successScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the successScreen.
  onTapPayButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.successScreen,
    );
  }
}
