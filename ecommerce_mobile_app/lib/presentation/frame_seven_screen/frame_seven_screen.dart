import 'bloc/frame_seven_bloc.dart';
import 'models/frame_seven_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameSevenScreen extends StatelessWidget {
  const FrameSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSevenBloc>(
      create: (context) => FrameSevenBloc(FrameSevenState(
        frameSevenModelObj: FrameSevenModel(),
      ))
        ..add(FrameSevenInitialEvent()),
      child: FrameSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameSevenBloc, FrameSevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgSuccessfull,
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
