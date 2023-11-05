import 'bloc/frame_thirtyeight_bloc.dart';
import 'models/frame_thirtyeight_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtyeightScreen extends StatelessWidget {
  const FrameThirtyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtyeightBloc>(
      create: (context) => FrameThirtyeightBloc(FrameThirtyeightState(
        frameThirtyeightModelObj: FrameThirtyeightModel(),
      ))
        ..add(FrameThirtyeightInitialEvent()),
      child: FrameThirtyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtyeightBloc, FrameThirtyeightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgVideoCall,
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
