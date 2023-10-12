import '../credit_card_and_debit_screen/widgets/creditcardanddebit_item_widget.dart';
import 'bloc/credit_card_and_debit_bloc.dart';
import 'models/credit_card_and_debit_model.dart';
import 'models/creditcardanddebit_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:hidden_store/widgets/app_bar/appbar_subtitle.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:hidden_store/widgets/custom_elevated_button.dart';

class CreditCardAndDebitScreen extends StatelessWidget {
  const CreditCardAndDebitScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CreditCardAndDebitBloc>(
        create: (context) => CreditCardAndDebitBloc(CreditCardAndDebitState(
            creditCardAndDebitModelObj: CreditCardAndDebitModel()))
          ..add(CreditCardAndDebitInitialEvent()),
        child: CreditCardAndDebitScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildCreditCardAndDebit(context),
                  SizedBox(height: 50.v)
                ])),
            bottomNavigationBar: _buildAddCard(context)));
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
            text: "msg_credit_card_and".tr,
            margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildCreditCardAndDebit(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: BlocSelector<CreditCardAndDebitBloc, CreditCardAndDebitState,
                    CreditCardAndDebitModel?>(
                selector: (state) => state.creditCardAndDebitModelObj,
                builder: (context, creditCardAndDebitModelObj) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 14.v);
                      },
                      itemCount: creditCardAndDebitModelObj
                              ?.creditcardanddebitItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        CreditcardanddebitItemModel model =
                            creditCardAndDebitModelObj
                                    ?.creditcardanddebitItemList[index] ??
                                CreditcardanddebitItemModel();
                        return CreditcardanddebitItemWidget(model,
                            onTapCreditCardItem: () {
                          onTapCreditCardItem(context);
                        });
                      });
                })));
  }

  /// Section Widget
  Widget _buildAddCard(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_card".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        onPressed: () {
          onTapAddCard(context);
        });
  }

  /// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the lailyfaFebrinaCardScreen.
  onTapCreditCardItem(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.lailyfaFebrinaCardScreen);
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

  /// Navigates to the addCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addCardScreen.
  onTapAddCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addCardScreen,
    );
  }
}
