import 'bloc/frame_twentyone_bloc.dart';
import 'models/frame_twentyone_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentyoneScreen extends StatelessWidget {
  const FrameTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyoneBloc>(
      create: (context) => FrameTwentyoneBloc(FrameTwentyoneState(
        frameTwentyoneModelObj: FrameTwentyoneModel(),
      ))
        ..add(FrameTwentyoneInitialEvent()),
      child: FrameTwentyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentyoneBloc, FrameTwentyoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgOrderTracking,
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
