import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

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
                              productDetailsOne: "Mine Page One - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.minePageOneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Product Details One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productDetailsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "My Cart Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myCartTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Seven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Eight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Nine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Ten".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Twelve".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Eighteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameEighteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Fourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Thirty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameThirtyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Seventeen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Twenty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameTwentyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Fifty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameFiftyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FiftyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFiftyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FiftyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFiftytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame TwentyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTwentytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Eleven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Nineteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameNineteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Fifteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Sixteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame ThirtyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame Forty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameFortyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              productDetailsOne: "Frame FortyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFortyoneScreen),
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
    required String productDetailsOne,
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
                  productDetailsOne,
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
