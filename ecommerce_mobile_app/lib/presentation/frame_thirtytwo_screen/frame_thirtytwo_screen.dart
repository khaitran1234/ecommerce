import 'bloc/frame_thirtytwo_bloc.dart';
import 'models/frame_thirtytwo_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtytwoScreen extends StatelessWidget {
  const FrameThirtytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtytwoBloc>(
      create: (context) => FrameThirtytwoBloc(FrameThirtytwoState(
        frameThirtytwoModelObj: FrameThirtytwoModel(),
      ))
        ..add(FrameThirtytwoInitialEvent()),
      child: FrameThirtytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtytwoBloc, FrameThirtytwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProfile,
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
