import 'bloc/frame_thirty_bloc.dart';
import 'models/frame_thirty_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtyScreen extends StatelessWidget {
  const FrameThirtyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtyBloc>(
      create: (context) => FrameThirtyBloc(FrameThirtyState(
        frameThirtyModelObj: FrameThirtyModel(),
      ))
        ..add(FrameThirtyInitialEvent()),
      child: FrameThirtyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtyBloc, FrameThirtyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductDetails1,
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
