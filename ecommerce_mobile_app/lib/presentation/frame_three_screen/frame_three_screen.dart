import 'bloc/frame_three_bloc.dart';
import 'models/frame_three_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThreeScreen extends StatelessWidget {
  const FrameThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThreeBloc>(
      create: (context) => FrameThreeBloc(FrameThreeState(
        frameThreeModelObj: FrameThreeModel(),
      ))
        ..add(FrameThreeInitialEvent()),
      child: FrameThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThreeBloc, FrameThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgOnboarding01,
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
