import 'bloc/frame_twentyeight_bloc.dart';
import 'models/frame_twentyeight_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentyeightScreen extends StatelessWidget {
  const FrameTwentyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyeightBloc>(
      create: (context) => FrameTwentyeightBloc(FrameTwentyeightState(
        frameTwentyeightModelObj: FrameTwentyeightModel(),
      ))
        ..add(FrameTwentyeightInitialEvent()),
      child: FrameTwentyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentyeightBloc, FrameTwentyeightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductDetails,
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
