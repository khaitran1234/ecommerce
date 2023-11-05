import 'bloc/frame_six_bloc.dart';
import 'models/frame_six_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameSixScreen extends StatelessWidget {
  const FrameSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSixBloc>(
      create: (context) => FrameSixBloc(FrameSixState(
        frameSixModelObj: FrameSixModel(),
      ))
        ..add(FrameSixInitialEvent()),
      child: FrameSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameSixBloc, FrameSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgLoginPage,
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
