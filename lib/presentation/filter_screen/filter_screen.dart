import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/condition_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'bloc/filter_bloc.dart';
import 'models/buyingformate_item_model.dart';
import 'models/condition_item_model.dart';
import 'models/filter_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:hidden_store/widgets/app_bar/appbar_subtitle.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:hidden_store/widgets/custom_elevated_button.dart';
import 'package:hidden_store/widgets/custom_text_form_field.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterBloc>(
        create: (context) =>
            FilterBloc(FilterState(filterModelObj: FilterModel()))
              ..add(FilterInitialEvent()),
        child: FilterScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(children: [
                  SizedBox(height: 31.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildPriceRange(context),
                                    SizedBox(height: 34.v),
                                    _buildCondition(context),
                                    SizedBox(height: 24.v),
                                    _buildBuyingFormat(context),
                                    SizedBox(height: 22.v),
                                    Text("lbl_item_location".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 13.v),
                                    _buildItemLocation(context),
                                    SizedBox(height: 25.v),
                                    _buildShowOnly(context)
                                  ])))),
                  SizedBox(height: 50.v)
                ])),
            bottomNavigationBar: _buildApply(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgCloseIcon,
            margin: EdgeInsets.only(left: 18.h, top: 16.v, bottom: 16.v)),
        title: AppbarSubtitle(
            text: "lbl_filter_search".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildPriceRange(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_price_range".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: BlocSelector<FilterBloc, FilterState,
                        TextEditingController?>(
                    selector: (state) => state.priceController,
                    builder: (context, priceController) {
                      return CustomTextFormField(
                          controller: priceController,
                          hintText: "lbl_1_245".tr,
                          hintStyle: CustomTextStyles.labelLargeBluegray300,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 15.v));
                    }))),
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: BlocSelector<FilterBloc, FilterState,
                        TextEditingController?>(
                    selector: (state) => state.priceController1,
                    builder: (context, priceController1) {
                      return CustomTextFormField(
                          controller: priceController1,
                          hintText: "lbl_9_344".tr,
                          hintStyle: CustomTextStyles.labelLargeBluegray300,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 15.v));
                    })))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildCondition(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_condition".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      BlocSelector<FilterBloc, FilterState, FilterModel?>(
          selector: (state) => state.filterModelObj,
          builder: (context, filterModelObj) {
            return Wrap(
                runSpacing: 9.v,
                spacing: 9.h,
                children: List<Widget>.generate(
                    filterModelObj?.conditionItemList.length ?? 0, (index) {
                  ConditionItemModel model =
                      filterModelObj?.conditionItemList[index] ??
                          ConditionItemModel();
                  return ConditionItemWidget(model,
                      onSelectedChipView: (value) {
                    context.read<FilterBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  });
                }));
          })
    ]);
  }

  /// Section Widget
  Widget _buildBuyingFormat(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_buying_format".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      BlocSelector<FilterBloc, FilterState, FilterModel?>(
          selector: (state) => state.filterModelObj,
          builder: (context, filterModelObj) {
            return Wrap(
                runSpacing: 8.v,
                spacing: 8.h,
                children: List<Widget>.generate(
                    filterModelObj?.buyingformateItemList.length ?? 0, (index) {
                  BuyingformateItemModel model =
                      filterModelObj?.buyingformateItemList[index] ??
                          BuyingformateItemModel();
                  return BuyingformateItemWidget(model,
                      onSelectedChipView: (value) {
                    context.read<FilterBloc>().add(
                        UpdateChipView1Event(index: index, isSelected: value));
                  });
                }));
          })
    ]);
  }

  /// Section Widget
  Widget _buildItemLocation(BuildContext context) {
    return BlocSelector<FilterBloc, FilterState, FilterModel?>(
        selector: (state) => state.filterModelObj,
        builder: (context, filterModelObj) {
          return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                  filterModelObj?.itemlocationItemList.length ?? 0, (index) {
                ItemlocationItemModel model =
                    filterModelObj?.itemlocationItemList[index] ??
                        ItemlocationItemModel();
                return ItemlocationItemWidget(model,
                    onSelectedChipView: (value) {
                  context.read<FilterBloc>().add(
                      UpdateChipView2Event(index: index, isSelected: value));
                });
              }));
        });
  }

  /// Section Widget
  Widget _buildShowOnly(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_show_only".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 10.v),
      BlocSelector<FilterBloc, FilterState, FilterModel?>(
          selector: (state) => state.filterModelObj,
          builder: (context, filterModelObj) {
            return Wrap(
                runSpacing: 8.v,
                spacing: 8.h,
                children: List<Widget>.generate(
                    filterModelObj?.showonlyItemList.length ?? 0, (index) {
                  ShowonlyItemModel model =
                      filterModelObj?.showonlyItemList[index] ??
                          ShowonlyItemModel();
                  return ShowonlyItemWidget(model, onSelectedChipView: (value) {
                    context.read<FilterBloc>().add(
                        UpdateChipView3Event(index: index, isSelected: value));
                  });
                }));
          })
    ]);
  }

  /// Section Widget
  Widget _buildApply(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_apply".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        onPressed: () {
          onTapApply(context);
        });
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchResultScreen.
  onTapApply(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
