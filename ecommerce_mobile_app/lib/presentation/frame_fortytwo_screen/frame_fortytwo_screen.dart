import 'bloc/frame_fortytwo_bloc.dart';
import 'models/frame_fortytwo_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortytwoScreen extends StatelessWidget {
  const FrameFortytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortytwoBloc>(
      create: (context) => FrameFortytwoBloc(FrameFortytwoState(
        frameFortytwoModelObj: FrameFortytwoModel(),
      ))
        ..add(FrameFortytwoInitialEvent()),
      child: FrameFortytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortytwoBloc, FrameFortytwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgComplated,
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
