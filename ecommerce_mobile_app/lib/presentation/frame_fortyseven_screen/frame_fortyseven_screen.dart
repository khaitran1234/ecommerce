import 'bloc/frame_fortyseven_bloc.dart';
import 'models/frame_fortyseven_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortysevenScreen extends StatelessWidget {
  const FrameFortysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortysevenBloc>(
      create: (context) => FrameFortysevenBloc(FrameFortysevenState(
        frameFortysevenModelObj: FrameFortysevenModel(),
      ))
        ..add(FrameFortysevenInitialEvent()),
      child: FrameFortysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortysevenBloc, FrameFortysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgFilters,
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
