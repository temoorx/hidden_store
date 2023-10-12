import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_title_edittext.dart';
import 'package:hidden_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(indent: 6.h),
                      SizedBox(height: 26.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtNikeAirMaxReact(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("msg_nike_air_max_2703".tr,
                                  style: theme.textTheme.bodySmall))),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_vapormax".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_2703".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_2704".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_vapormax2".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_97".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: BlocSelector<SearchBloc, SearchState, TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarTitleEdittext(
                  margin: EdgeInsets.only(left: 16.h),
                  hintText: "lbl_nike_air_max".tr,
                  controller: searchController);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMicIcon, margin: EdgeInsets.all(16.h))
        ]);
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchResultScreen.
  onTapTxtNikeAirMaxReact(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
