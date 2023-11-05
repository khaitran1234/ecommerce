import 'bloc/frame_twentyseven_bloc.dart';
import 'models/frame_twentyseven_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentysevenScreen extends StatelessWidget {
  const FrameTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentysevenBloc>(
      create: (context) => FrameTwentysevenBloc(FrameTwentysevenState(
        frameTwentysevenModelObj: FrameTwentysevenModel(),
      ))
        ..add(FrameTwentysevenInitialEvent()),
      child: FrameTwentysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentysevenBloc, FrameTwentysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgPaymentConfirm,
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
