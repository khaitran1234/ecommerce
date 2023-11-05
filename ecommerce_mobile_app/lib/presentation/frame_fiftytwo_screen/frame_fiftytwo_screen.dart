import 'bloc/frame_fiftytwo_bloc.dart';
import 'models/frame_fiftytwo_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFiftytwoScreen extends StatelessWidget {
  const FrameFiftytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFiftytwoBloc>(
      create: (context) => FrameFiftytwoBloc(FrameFiftytwoState(
        frameFiftytwoModelObj: FrameFiftytwoModel(),
      ))
        ..add(FrameFiftytwoInitialEvent()),
      child: FrameFiftytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFiftytwoBloc, FrameFiftytwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMessagesList,
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
