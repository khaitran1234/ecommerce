import 'bloc/my_cart_two_bloc.dart';
import 'models/my_cart_two_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_mobile_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_mobile_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_mobile_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MyCartTwoScreen extends StatelessWidget {
  const MyCartTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyCartTwoBloc>(
      create: (context) => MyCartTwoBloc(MyCartTwoState(
        myCartTwoModelObj: MyCartTwoModel(),
      ))
        ..add(MyCartTwoInitialEvent()),
      child: MyCartTwoScreen(),
    );
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
          padding: EdgeInsets.symmetric(vertical: 17.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "lbl_my_cart".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildCart01(context),
              SizedBox(height: 15.v),
              _buildTwenty(context),
              SizedBox(height: 15.v),
              _buildCart03(context),
              SizedBox(height: 40.v),
              _buildPromoCode1(context),
              SizedBox(height: 97.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_total_3_item2".tr,
                      style: CustomTextStyles.titleSmallBluegray400_1,
                    ),
                    TextSpan(
                      text: "                                             ".tr,
                    ),
                    TextSpan(
                      text: "lbl_500".tr,
                      style: CustomTextStyles.titleLargeBlack900,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildProceedToCheckout(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 60.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrow,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 9.v,
          bottom: 8.v,
        ),
      ),
      actions: [
        Container(
          height: 34.v,
          width: 30.h,
          margin: EdgeInsets.fromLTRB(25.h, 10.v, 25.h, 8.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  decoration: IconButtonStyleHelper.outlineBlack,
                  alignment: Alignment.bottomCenter,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBag,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 13.adaptSize,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    bottom: 21.v,
                  ),
                  decoration: AppDecoration.fillBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Text(
                    "lbl_3".tr,
                    style: CustomTextStyles.poppinsPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return CustomElevatedButton(
      width: 70.h,
      text: "lbl_1".tr,
      margin: EdgeInsets.only(
        top: 50.v,
        right: 5.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildCart01(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage24180x80,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Container(
            width: 101.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 2.v,
              bottom: 3.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_roller_rabbit".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: "msg_vado_odelle_dress2".tr,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_198_00".tr,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          _buildOne(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOne1(BuildContext context) {
    return CustomElevatedButton(
      width: 70.h,
      text: "lbl_1".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        top: 50.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 350.h,
        margin: EdgeInsets.only(right: 25.h),
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup20,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUntitled11,
              height: 80.v,
              width: 65.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            Container(
              width: 128.h,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 2.v,
                bottom: 3.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_axel_arigato2".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "msg_clean_90_triole".tr,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_245_00".tr,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            _buildOne1(context),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgTrash,
              height: 16.v,
              width: 14.h,
              margin: EdgeInsets.symmetric(vertical: 32.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne2(BuildContext context) {
    return CustomElevatedButton(
      width: 70.h,
      text: "lbl_1".tr,
      margin: EdgeInsets.only(
        left: 2.h,
        top: 50.v,
        right: 5.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildCart03(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUntitled13,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Container(
            width: 142.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_herschel_supply2".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: "msg_daypack_backpack".tr,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_40_00".tr,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          _buildOne2(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        top: 5.v,
        bottom: 4.v,
      ),
      child:
          BlocSelector<MyCartTwoBloc, MyCartTwoState, TextEditingController?>(
        selector: (state) => state.promoCodeController,
        builder: (context, promoCodeController) {
          return CustomTextFormField(
            width: 82.h,
            controller: promoCodeController,
            hintText: "lbl_promo_code".tr,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildApply(BuildContext context) {
    return CustomElevatedButton(
      width: 60.h,
      text: "lbl_apply".tr,
      buttonStyle: CustomButtonStyles.fillBlackTL7,
      buttonTextStyle: CustomTextStyles.labelMediumPrimary_1,
    );
  }

  /// Section Widget
  Widget _buildPromoCode1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildPromoCode(context),
          _buildApply(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProceedToCheckout(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "msg_proceed_to_checkout".tr,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 50.v,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlack,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
    );
  }
}
