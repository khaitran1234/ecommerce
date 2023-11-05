import 'bloc/frame_thirtyseven_bloc.dart';
import 'models/frame_thirtyseven_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtysevenScreen extends StatelessWidget {
  const FrameThirtysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtysevenBloc>(
      create: (context) => FrameThirtysevenBloc(FrameThirtysevenState(
        frameThirtysevenModelObj: FrameThirtysevenModel(),
      ))
        ..add(FrameThirtysevenInitialEvent()),
      child: FrameThirtysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtysevenBloc, FrameThirtysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgTrackingAddress,
                height: 812.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
