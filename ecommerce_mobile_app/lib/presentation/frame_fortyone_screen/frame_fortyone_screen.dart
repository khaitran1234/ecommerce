import 'bloc/frame_fortyone_bloc.dart';
import 'models/frame_fortyone_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortyoneScreen extends StatelessWidget {
  const FrameFortyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortyoneBloc>(
      create: (context) => FrameFortyoneBloc(FrameFortyoneState(
        frameFortyoneModelObj: FrameFortyoneModel(),
      ))
        ..add(FrameFortyoneInitialEvent()),
      child: FrameFortyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortyoneBloc, FrameFortyoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgClientReviews,
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
