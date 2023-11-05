import 'bloc/frame_five_bloc.dart';
import 'models/frame_five_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFiveScreen extends StatelessWidget {
  const FrameFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFiveBloc>(
      create: (context) => FrameFiveBloc(FrameFiveState(
        frameFiveModelObj: FrameFiveModel(),
      ))
        ..add(FrameFiveInitialEvent()),
      child: FrameFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFiveBloc, FrameFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgOnboarding03,
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
