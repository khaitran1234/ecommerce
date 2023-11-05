import 'bloc/frame_twelve_bloc.dart';
import 'models/frame_twelve_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwelveScreen extends StatelessWidget {
  const FrameTwelveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwelveBloc>(
      create: (context) => FrameTwelveBloc(FrameTwelveState(
        frameTwelveModelObj: FrameTwelveModel(),
      ))
        ..add(FrameTwelveInitialEvent()),
      child: FrameTwelveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwelveBloc, FrameTwelveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMinePage02,
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
