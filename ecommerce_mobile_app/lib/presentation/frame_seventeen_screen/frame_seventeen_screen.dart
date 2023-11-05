import 'bloc/frame_seventeen_bloc.dart';
import 'models/frame_seventeen_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameSeventeenScreen extends StatelessWidget {
  const FrameSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSeventeenBloc>(
      create: (context) => FrameSeventeenBloc(FrameSeventeenState(
        frameSeventeenModelObj: FrameSeventeenModel(),
      ))
        ..add(FrameSeventeenInitialEvent()),
      child: FrameSeventeenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameSeventeenBloc, FrameSeventeenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMyCart03,
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
