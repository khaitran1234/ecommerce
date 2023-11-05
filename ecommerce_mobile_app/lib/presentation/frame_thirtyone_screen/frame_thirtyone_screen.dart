import 'bloc/frame_thirtyone_bloc.dart';
import 'models/frame_thirtyone_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtyoneScreen extends StatelessWidget {
  const FrameThirtyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtyoneBloc>(
      create: (context) => FrameThirtyoneBloc(FrameThirtyoneState(
        frameThirtyoneModelObj: FrameThirtyoneModel(),
      ))
        ..add(FrameThirtyoneInitialEvent()),
      child: FrameThirtyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtyoneBloc, FrameThirtyoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductDetails2,
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
