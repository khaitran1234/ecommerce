import 'bloc/frame_four_bloc.dart';
import 'models/frame_four_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFourScreen extends StatelessWidget {
  const FrameFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourBloc>(
      create: (context) => FrameFourBloc(FrameFourState(
        frameFourModelObj: FrameFourModel(),
      ))
        ..add(FrameFourInitialEvent()),
      child: FrameFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFourBloc, FrameFourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgOnboarding02,
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
