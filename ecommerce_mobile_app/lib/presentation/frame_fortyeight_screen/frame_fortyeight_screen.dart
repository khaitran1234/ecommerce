import 'bloc/frame_fortyeight_bloc.dart';
import 'models/frame_fortyeight_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortyeightScreen extends StatelessWidget {
  const FrameFortyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortyeightBloc>(
      create: (context) => FrameFortyeightBloc(FrameFortyeightState(
        frameFortyeightModelObj: FrameFortyeightModel(),
      ))
        ..add(FrameFortyeightInitialEvent()),
      child: FrameFortyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortyeightBloc, FrameFortyeightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgFindingCollectiom,
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
