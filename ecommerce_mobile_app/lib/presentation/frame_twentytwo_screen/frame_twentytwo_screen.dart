import 'bloc/frame_twentytwo_bloc.dart';
import 'models/frame_twentytwo_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentytwoScreen extends StatelessWidget {
  const FrameTwentytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentytwoBloc>(
      create: (context) => FrameTwentytwoBloc(FrameTwentytwoState(
        frameTwentytwoModelObj: FrameTwentytwoModel(),
      ))
        ..add(FrameTwentytwoInitialEvent()),
      child: FrameTwentytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentytwoBloc, FrameTwentytwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductCategory2,
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
