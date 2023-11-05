import 'bloc/frame_eleven_bloc.dart';
import 'models/frame_eleven_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameElevenScreen extends StatelessWidget {
  const FrameElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameElevenBloc>(
      create: (context) => FrameElevenBloc(FrameElevenState(
        frameElevenModelObj: FrameElevenModel(),
      ))
        ..add(FrameElevenInitialEvent()),
      child: FrameElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameElevenBloc, FrameElevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgNotification812x375,
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
