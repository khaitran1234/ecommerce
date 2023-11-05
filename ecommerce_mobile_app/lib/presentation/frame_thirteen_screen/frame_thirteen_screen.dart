import 'bloc/frame_thirteen_bloc.dart';
import 'models/frame_thirteen_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirteenScreen extends StatelessWidget {
  const FrameThirteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirteenBloc>(
      create: (context) => FrameThirteenBloc(FrameThirteenState(
        frameThirteenModelObj: FrameThirteenModel(),
      ))
        ..add(FrameThirteenInitialEvent()),
      child: FrameThirteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirteenBloc, FrameThirteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMinePage03,
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
