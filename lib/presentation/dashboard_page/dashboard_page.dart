import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/fsnikeairmax_item_widget.dart';
import '../dashboard_page/widgets/msnikeairmax_item_widget.dart';
import '../dashboard_page/widgets/slider_item_widget.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/fsnikeairmax_item_model.dart';
import 'models/msnikeairmax_item_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:hidden_store/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hidden_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSlider(context),
                              SizedBox(height: 16.v),
                              BlocBuilder<DashboardBloc, DashboardState>(
                                  builder: (context, state) {
                                return Container(
                                    height: 8.v,
                                    margin: EdgeInsets.only(left: 135.h),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: state.sliderIndex,
                                        count: state.dashboardModelObj
                                                ?.sliderItemList.length ??
                                            0,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor: theme
                                                .colorScheme.primary
                                                .withOpacity(1),
                                            dotColor: appTheme.blue50,
                                            dotHeight: 8.v,
                                            dotWidth: 8.h)));
                              }),
                              SizedBox(height: 25.v),
                              _buildCategories(context),
                              SizedBox(height: 23.v),
                              _buildFlashSaleHeader(context),
                              SizedBox(height: 12.v),
                              _buildFsNikeAirMax(context),
                              SizedBox(height: 23.v),
                              _buildMegaSaleHeader(context),
                              SizedBox(height: 10.v),
                              _buildMsNikeAirMax(context),
                              SizedBox(height: 29.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecomendedProduct,
                                  height: 206.v,
                                  width: 343.h,
                                  radius: BorderRadius.circular(5.h)),
                              SizedBox(height: 16.v),
                              _buildDashboard(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgSearch,
            margin: EdgeInsets.only(left: 32.h, top: 20.v, bottom: 20.v)),
        title: AppbarSubtitleOne(
            text: "lbl_search_product".tr,
            margin: EdgeInsets.only(left: 8.h),
            onTap: () {
              onTapSearchProduct(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgDownload,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
              onTap: () {
                onTapDownload(context);
              }),
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgNotificationIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgNotificationIcon(context);
                    }),
                CustomImageView(
                    imagePath: ImageConstant.imgClosePink300,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    alignment: Alignment.topRight,
                    margin:
                        EdgeInsets.only(left: 14.h, right: 2.h, bottom: 16.v))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
          return CarouselSlider.builder(
              options: CarouselOptions(
                  height: 206.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    state.sliderIndex = index;
                  }),
              itemCount: state.dashboardModelObj?.sliderItemList.length ?? 0,
              itemBuilder: (context, index, realIndex) {
                SliderItemModel model =
                    state.dashboardModelObj?.sliderItemList[index] ??
                        SliderItemModel();
                return SliderItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 16.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("lbl_category".tr, style: theme.textTheme.titleSmall),
            GestureDetector(
                onTap: () {
                  onTapTxtMoreCategoryLink(context);
                },
                child: Text("lbl_more_category".tr,
                    style: CustomTextStyles.titleSmallPrimary))
          ])),
      SizedBox(height: 10.v),
      SizedBox(
          height: 108.v,
          child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
              selector: (state) => state.dashboardModelObj,
              builder: (context, dashboardModelObj) {
                return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 12.h);
                    },
                    itemCount:
                        dashboardModelObj?.categoriesItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      CategoriesItemModel model =
                          dashboardModelObj?.categoriesItemList[index] ??
                              CategoriesItemModel();
                      return CategoriesItemWidget(model);
                    });
              }))
    ]);
  }

  /// Section Widget
  Widget _buildFlashSaleHeader(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFlashSaleHeader(context);
        },
        child: Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_flash_sale".tr, style: theme.textTheme.titleSmall),
                  Text("lbl_see_more".tr,
                      style: CustomTextStyles.titleSmallPrimary)
                ])));
  }

  /// Section Widget
  Widget _buildFsNikeAirMax(BuildContext context) {
    return SizedBox(
        height: 238.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.fsnikeairmaxItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    FsnikeairmaxItemModel model =
                        dashboardModelObj?.fsnikeairmaxItemList[index] ??
                            FsnikeairmaxItemModel();
                    return FsnikeairmaxItemWidget(model, onTapProductItem: () {
                      onTapProductItem(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildMegaSaleHeader(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child:
                  Text("lbl_mega_sale".tr, style: theme.textTheme.titleSmall)),
          Text("lbl_see_more".tr, style: CustomTextStyles.titleSmallPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildMsNikeAirMax(BuildContext context) {
    return SizedBox(
        height: 238.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.msnikeairmaxItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    MsnikeairmaxItemModel model =
                        dashboardModelObj?.msnikeairmaxItemList[index] ??
                            MsnikeairmaxItemModel();
                    return MsnikeairmaxItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildDashboard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 283.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 13.h,
                      crossAxisSpacing: 13.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: dashboardModelObj?.dashboardItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    DashboardItemModel model =
                        dashboardModelObj?.dashboardItemList[index] ??
                            DashboardItemModel();
                    return DashboardItemWidget(model);
                  });
            }));
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the searchScreen.
  onTapSearchProduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.searchScreen);
  }

  /// Navigates to the favoriteProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the favoriteProductScreen.
  onTapDownload(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.favoriteProductScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the notificationScreen.
  onTapImgNotificationIcon(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.notificationScreen);
  }

  /// Navigates to the listCategoryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the listCategoryScreen.
  onTapTxtMoreCategoryLink(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.listCategoryScreen);
  }

  /// Navigates to the superFlashSaleScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the superFlashSaleScreen.
  onTapFlashSaleHeader(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.superFlashSaleScreen);
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the productDetailScreen.
  onTapProductItem(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDetailScreen,
    );
  }
}
