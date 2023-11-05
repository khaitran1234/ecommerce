import 'bloc/frame_twenty_bloc.dart';
import 'models/frame_twenty_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentyScreen extends StatelessWidget {
  const FrameTwentyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyBloc>(
      create: (context) => FrameTwentyBloc(FrameTwentyState(
        frameTwentyModelObj: FrameTwentyModel(),
      ))
        ..add(FrameTwentyInitialEvent()),
      child: FrameTwentyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentyBloc, FrameTwentyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgOrderDetails,
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
