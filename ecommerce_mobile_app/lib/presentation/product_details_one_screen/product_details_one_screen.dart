import '../product_details_one_screen/widgets/size_item_widget.dart';
import 'bloc/product_details_one_bloc.dart';
import 'models/product_details_one_model.dart';
import 'models/size_item_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_mobile_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_mobile_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_mobile_app/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsOneScreen extends StatelessWidget {
  const ProductDetailsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDetailsOneBloc>(
      create: (context) => ProductDetailsOneBloc(ProductDetailsOneState(
        productDetailsOneModelObj: ProductDetailsOneModel(),
      ))
        ..add(ProductDetailsOneInitialEvent()),
      child: ProductDetailsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 777.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildImage(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 23.h,
                    vertical: 26.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTwentyThree(context),
                      SizedBox(height: 25.v),
                      _buildTwentyFive(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImage(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 395.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage241,
              height: 395.v,
              width: 375.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 9.v,
                  right: 25.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomAppBar(
                      height: 35.v,
                      leadingWidth: 60.h,
                      leading: AppbarLeadingIconbutton(
                        imagePath: ImageConstant.imgArrow,
                        margin: EdgeInsets.only(left: 25.h),
                      ),
                      actions: [
                        AppbarTrailingIconbutton(
                          imagePath: ImageConstant.imgBag,
                          margin: EdgeInsets.fromLTRB(25.h, 3.v, 25.h, 2.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 271.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgDots,
                            height: 15.v,
                            width: 49.h,
                            margin: EdgeInsets.only(top: 15.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 108.h),
                            child: CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              decoration: IconButtonStyleHelper.fillPrimary,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgLoveOnprimarycontainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return SizedBox(
      height: 282.v,
      width: 328.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_description".tr,
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 313.h,
                  child: Text(
                    "msg_get_a_little_lift".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 132.v,
              width: 40.h,
              margin: EdgeInsets.only(
                top: 64.v,
                right: 2.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgColorMeta,
                height: 110.v,
                width: 20.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 90.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_size".tr,
                    style: CustomTextStyles.titleMediumSemiBold,
                  ),
                  SizedBox(height: 12.v),
                  BlocSelector<ProductDetailsOneBloc, ProductDetailsOneState,
                      ProductDetailsOneModel?>(
                    selector: (state) => state.productDetailsOneModelObj,
                    builder: (context, productDetailsOneModelObj) {
                      return Wrap(
                        runSpacing: 15.v,
                        spacing: 15.h,
                        children: List<Widget>.generate(
                          productDetailsOneModelObj?.sizeItemList.length ?? 0,
                          (index) {
                            SizeItemModel model = productDetailsOneModelObj
                                    ?.sizeItemList[index] ??
                                SizeItemModel();

                            return SizeItemWidget(
                              model,
                              onSelectedChipView: (value) {
                                context.read<ProductDetailsOneBloc>().add(
                                    UpdateChipViewEvent(
                                        index: index, isSelected: value));
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                bottom: 215.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 115.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_roller_rabbit".tr,
                                style: CustomTextStyles.titleMediumSemiBold_1,
                              ),
                              TextSpan(
                                text: "msg_vado_odelle_dress".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      SizedBox(
                        width: 156.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: CustomRatingBar(
                                initialRating: 5,
                              ),
                            ),
                            Text(
                              "lbl_320_review".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 7.v,
                    ),
                    child: Column(
                      children: [
                        CustomElevatedButton(
                          width: 70.h,
                          text: "lbl_1".tr,
                          margin: EdgeInsets.only(right: 2.h),
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "msg_avaliable_in_stok".tr,
                          style: CustomTextStyles.labelMediumBlack900,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70.h,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 3.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_total_price".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                TextSpan(
                  text: "lbl_198_00".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        CustomElevatedButton(
          height: 50.v,
          width: 200.h,
          text: "lbl_add_to_cart".tr,
          margin: EdgeInsets.only(left: 55.h),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 15.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcon,
              height: 16.v,
              width: 15.h,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillBlackTL25,
          buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        ),
      ],
    );
  }
}
