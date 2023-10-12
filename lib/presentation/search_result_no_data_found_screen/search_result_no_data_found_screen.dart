import 'bloc/search_result_no_data_found_bloc.dart';
import 'models/search_result_no_data_found_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_title_searchview.dart';
import 'package:hidden_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:hidden_store/widgets/custom_elevated_button.dart';
import 'package:hidden_store/widgets/custom_icon_button.dart';

class SearchResultNoDataFoundScreen extends StatelessWidget {
  const SearchResultNoDataFoundScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultNoDataFoundBloc>(
      create: (context) =>
          SearchResultNoDataFoundBloc(SearchResultNoDataFoundState(
        searchResultNoDataFoundModelObj: SearchResultNoDataFoundModel(),
      ))
            ..add(SearchResultNoDataFoundInitialEvent()),
      child: SearchResultNoDataFoundScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              Divider(),
              SizedBox(height: 15.v),
              _buildResultCounter(context),
              Spacer(
                flex: 31,
              ),
              _buildNoData(context),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_back_to_home".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
              Spacer(
                flex: 68,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: BlocSelector<SearchResultNoDataFoundBloc,
          SearchResultNoDataFoundState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search_product".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSort,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilter,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 32.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildResultCounter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(
                "lbl_0_result".tr,
                style: CustomTextStyles.labelLargeOnPrimary,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_man_shoes".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDownIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNoData(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 72.adaptSize,
          width: 72.adaptSize,
          padding: EdgeInsets.all(28.h),
          decoration: IconButtonStyleHelper.outlinePrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgCloseOnprimarycontainer,
          ),
        ),
        SizedBox(height: 15.v),
        Text(
          "msg_product_not_found".tr,
          style: CustomTextStyles.headlineSmallOnPrimary,
        ),
        SizedBox(height: 11.v),
        Text(
          "msg_thank_you_for_shopping".tr,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
