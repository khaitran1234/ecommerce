import 'bloc/frame_eight_bloc.dart';
import 'models/frame_eight_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameEightScreen extends StatelessWidget {
  const FrameEightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameEightBloc>(
      create: (context) => FrameEightBloc(FrameEightState(
        frameEightModelObj: FrameEightModel(),
      ))
        ..add(FrameEightInitialEvent()),
      child: FrameEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameEightBloc, FrameEightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgCategorie01,
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
