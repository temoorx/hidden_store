import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              loginText: "Splash Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Register".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Dashboard - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.dashboardContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Super Flash Sale".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.superFlashSaleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Favorite Product".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.favoriteProductScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Product Detail".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productDetailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Review Product".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.reviewProductScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Write Review Fill".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.writeReviewFillScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Notification Offer".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationOfferScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Notification Feed".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationFeedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Notification Activity".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationActivityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Search".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Search Result".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Search Result No Data Found".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultNoDataFoundScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "List Category".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.listCategoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Sort By".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sortByScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Filter".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filterScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Ship To".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.shipToScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Payment Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Choose Credit Or Debit Card".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseCreditOrDebitCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Success Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.successScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Change Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.changePasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Order".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.orderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Order Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Add Address".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Address".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Add Payment".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addPaymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Credit Card And Debit".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.creditCardAndDebitScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Add Card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              loginText: "Lailyfa Febrina Card".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lailyfaFebrinaCardScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String loginText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  loginText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
