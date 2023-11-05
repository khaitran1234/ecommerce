import 'bloc/frame_sixteen_bloc.dart';
import 'models/frame_sixteen_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameSixteenScreen extends StatelessWidget {
  const FrameSixteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSixteenBloc>(
      create: (context) => FrameSixteenBloc(FrameSixteenState(
        frameSixteenModelObj: FrameSixteenModel(),
      ))
        ..add(FrameSixteenInitialEvent()),
      child: FrameSixteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameSixteenBloc, FrameSixteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMyCart02,
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
