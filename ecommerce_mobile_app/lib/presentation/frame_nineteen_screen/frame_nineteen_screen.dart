import 'bloc/frame_nineteen_bloc.dart';
import 'models/frame_nineteen_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameNineteenScreen extends StatelessWidget {
  const FrameNineteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameNineteenBloc>(
      create: (context) => FrameNineteenBloc(FrameNineteenState(
        frameNineteenModelObj: FrameNineteenModel(),
      ))
        ..add(FrameNineteenInitialEvent()),
      child: FrameNineteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameNineteenBloc, FrameNineteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgOngoing,
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
