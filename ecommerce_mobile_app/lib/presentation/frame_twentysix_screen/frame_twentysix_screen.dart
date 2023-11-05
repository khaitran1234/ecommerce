import 'bloc/frame_twentysix_bloc.dart';
import 'models/frame_twentysix_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentysixScreen extends StatelessWidget {
  const FrameTwentysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentysixBloc>(
      create: (context) => FrameTwentysixBloc(FrameTwentysixState(
        frameTwentysixModelObj: FrameTwentysixModel(),
      ))
        ..add(FrameTwentysixInitialEvent()),
      child: FrameTwentysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentysixBloc, FrameTwentysixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgPaymentMathod,
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
