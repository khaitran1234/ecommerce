import '../mine_page_one_page/widgets/productprofile_item_widget.dart';
import 'bloc/mine_page_one_bloc.dart';
import 'models/mine_page_one_model.dart';
import 'models/productprofile_item_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/appbar_title_image.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecommerce_mobile_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_mobile_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_mobile_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_mobile_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MinePageOnePage extends StatelessWidget {
  const MinePageOnePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MinePageOneBloc>(
      create: (context) => MinePageOneBloc(MinePageOneState(
        minePageOneModelObj: MinePageOneModel(),
      ))
        ..add(MinePageOneInitialEvent()),
      child: MinePageOnePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 179.h,
                  margin: EdgeInsets.only(left: 25.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_welcome".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "msg_our_fashions_app".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              _buildSearchBar(context),
              SizedBox(height: 30.v),
              _buildFeatures(context),
              SizedBox(height: 24.v),
              _buildTitle(context),
              SizedBox(height: 11.v),
              _buildProductProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgMenuBar,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRectangle97,
          margin: EdgeInsets.symmetric(horizontal: 22.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<MinePageOneBloc, MinePageOneState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_search".tr,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgFiltter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeatures(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 25.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 160.v,
                width: 260.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage90,
                      height: 160.v,
                      width: 260.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 163.h,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_50_off".tr,
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                    TextSpan(
                                      text: "msg_on_everything_today".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "msg_with_code_fscreation".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                            SizedBox(height: 15.v),
                            CustomElevatedButton(
                              height: 25.v,
                              width: 70.h,
                              text: "lbl_get_now".tr,
                              buttonStyle: CustomButtonStyles.fillBlack,
                              buttonTextStyle:
                                  CustomTextStyles.labelMediumPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160.v,
                width: 260.h,
                margin: EdgeInsets.only(left: 15.h),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage90160x260,
                      height: 160.v,
                      width: 260.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 163.h,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_70_off".tr,
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                    TextSpan(
                                      text: "msg_on_everything_today".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "msg_with_code_fscreation".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                            SizedBox(height: 15.v),
                            CustomElevatedButton(
                              height: 25.v,
                              width: 70.h,
                              text: "lbl_get_now".tr,
                              buttonStyle: CustomButtonStyles.fillBlack,
                              buttonTextStyle:
                                  CustomTextStyles.labelMediumPrimary,
                            ),
                          ],
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
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_new_arrivals".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_view_all".tr,
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductProfile(BuildContext context) {
    return SizedBox(
      height: 244.v,
      child: BlocSelector<MinePageOneBloc, MinePageOneState, MinePageOneModel?>(
        selector: (state) => state.minePageOneModelObj,
        builder: (context, minePageOneModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: minePageOneModelObj?.productprofileItemList.length ?? 0,
            itemBuilder: (context, index) {
              ProductprofileItemModel model =
                  minePageOneModelObj?.productprofileItemList[index] ??
                      ProductprofileItemModel();
              return ProductprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
