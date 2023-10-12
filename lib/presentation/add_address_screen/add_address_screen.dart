import 'bloc/add_address_bloc.dart';
import 'models/add_address_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';
import 'package:hidden_store/core/utils/validation_functions.dart';
import 'package:hidden_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:hidden_store/widgets/app_bar/appbar_subtitle.dart';
import 'package:hidden_store/widgets/app_bar/custom_app_bar.dart';
import 'package:hidden_store/widgets/custom_elevated_button.dart';
import 'package:hidden_store/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddAddressBloc>(
        create: (context) => AddAddressBloc(
            AddAddressState(addAddressModelObj: AddAddressModel()))
          ..add(AddAddressInitialEvent()),
        child: AddAddressScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Column(children: [
                      SizedBox(height: 29.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 16.h, bottom: 5.v),
                                  child: Column(children: [
                                    _buildCountry(context),
                                    SizedBox(height: 22.v),
                                    _buildFirstName(context),
                                    SizedBox(height: 22.v),
                                    _buildLastName(context),
                                    SizedBox(height: 23.v),
                                    _buildStreetAddress(context),
                                    SizedBox(height: 21.v),
                                    _buildStreetAddress2(context),
                                    SizedBox(height: 22.v),
                                    _buildCity(context),
                                    SizedBox(height: 23.v),
                                    _buildStateProvinceRegion(context),
                                    SizedBox(height: 24.v),
                                    _buildZipCode(context),
                                    SizedBox(height: 23.v),
                                    _buildPhoneNumber(context)
                                  ])))),
                      SizedBox(height: 50.v)
                    ]))),
            bottomNavigationBar: _buildAddAddress(context)));
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
            text: "lbl_add_address".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_country_or_region".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.countryController,
          builder: (context, countryController) {
            return CustomTextFormField(
                controller: countryController,
                hintText: "msg_enter_the_country".tr,
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_first_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.firstNameController,
          builder: (context, firstNameController) {
            return CustomTextFormField(
                controller: firstNameController,
                hintText: "msg_enter_the_first".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "Please enter valid text";
                  }
                  return null;
                },
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_last_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.lastNameController,
          builder: (context, lastNameController) {
            return CustomTextFormField(
                controller: lastNameController,
                hintText: "msg_enter_the_last_name".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "Please enter valid text";
                  }
                  return null;
                },
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildStreetAddress(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_street_address".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.streetaddressController,
          builder: (context, streetaddressController) {
            return CustomTextFormField(
                controller: streetaddressController,
                hintText: "msg_enter_the_street".tr,
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildStreetAddress2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_street_address_2".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 16.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.streetaddressController1,
          builder: (context, streetaddressController1) {
            return CustomTextFormField(
                controller: streetaddressController1,
                hintText: "msg_enter_the_street2".tr,
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_city".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.cityController,
          builder: (context, cityController) {
            return CustomTextFormField(
                controller: cityController,
                hintText: "lbl_enter_the_city".tr,
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildStateProvinceRegion(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_state_province_region".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.oldPasswordController,
          builder: (context, oldPasswordController) {
            return CustomTextFormField(
                controller: oldPasswordController,
                hintText: "msg_enter_the_state".tr,
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildZipCode(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_zip_code".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.zipcodeController,
          builder: (context, zipcodeController) {
            return CustomTextFormField(
                controller: zipcodeController,
                hintText: "msg_enter_the_zip_code".tr,
                textInputType: TextInputType.number,
                validator: (value) {
                  if (!isNumeric(value)) {
                    return "Please enter valid number";
                  }
                  return null;
                },
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_phone_number".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 12.v),
      BlocSelector<AddAddressBloc, AddAddressState, TextEditingController?>(
          selector: (state) => state.phoneNumberController,
          builder: (context, phoneNumberController) {
            return CustomTextFormField(
                controller: phoneNumberController,
                hintText: "msg_enter_the_phone".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "Please enter valid phone number";
                  }
                  return null;
                },
                borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5,
                filled: false);
          })
    ]);
  }

  /// Section Widget
  Widget _buildAddAddress(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_address".tr,
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
