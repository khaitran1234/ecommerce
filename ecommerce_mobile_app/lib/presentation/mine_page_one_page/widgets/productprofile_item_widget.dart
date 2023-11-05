import '../models/productprofile_item_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:ecommerce_mobile_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductprofileItemWidget extends StatelessWidget {
  ProductprofileItemWidget(
    this.productprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductprofileItemModel productprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Column(
        children: [
          SizedBox(
            height: 170.v,
            width: 155.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage90170x155,
                  height: 170.v,
                  width: 155.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.v,
                    right: 15.h,
                  ),
                  child: CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLove,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          SizedBox(
            width: 121.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_the_marc_jacobs".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: "msg_traveler_tote_195_00".tr,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
