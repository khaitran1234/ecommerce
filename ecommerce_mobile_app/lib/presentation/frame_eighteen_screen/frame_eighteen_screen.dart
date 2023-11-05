import 'bloc/frame_eighteen_bloc.dart';
import 'models/frame_eighteen_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameEighteenScreen extends StatelessWidget {
  const FrameEighteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameEighteenBloc>(
      create: (context) => FrameEighteenBloc(FrameEighteenState(
        frameEighteenModelObj: FrameEighteenModel(),
      ))
        ..add(FrameEighteenInitialEvent()),
      child: FrameEighteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameEighteenBloc, FrameEighteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMyCart04,
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
