import 'bloc/frame_fifteen_bloc.dart';
import 'models/frame_fifteen_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFifteenScreen extends StatelessWidget {
  const FrameFifteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFifteenBloc>(
      create: (context) => FrameFifteenBloc(FrameFifteenState(
        frameFifteenModelObj: FrameFifteenModel(),
      ))
        ..add(FrameFifteenInitialEvent()),
      child: FrameFifteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFifteenBloc, FrameFifteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMyCart01,
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
