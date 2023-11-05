import 'bloc/frame_thirtyfour_bloc.dart';
import 'models/frame_thirtyfour_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtyfourScreen extends StatelessWidget {
  const FrameThirtyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtyfourBloc>(
      create: (context) => FrameThirtyfourBloc(FrameThirtyfourState(
        frameThirtyfourModelObj: FrameThirtyfourModel(),
      ))
        ..add(FrameThirtyfourInitialEvent()),
      child: FrameThirtyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtyfourBloc, FrameThirtyfourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgScreener,
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
