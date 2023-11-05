import 'bloc/frame_two_bloc.dart';
import 'models/frame_two_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwoScreen extends StatelessWidget {
  const FrameTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwoBloc>(
      create: (context) => FrameTwoBloc(FrameTwoState(
        frameTwoModelObj: FrameTwoModel(),
      ))
        ..add(FrameTwoInitialEvent()),
      child: FrameTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwoBloc, FrameTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgSplashScreen02,
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
