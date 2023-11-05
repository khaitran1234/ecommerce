import 'bloc/frame_thirtyfive_bloc.dart';
import 'models/frame_thirtyfive_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtyfiveScreen extends StatelessWidget {
  const FrameThirtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtyfiveBloc>(
      create: (context) => FrameThirtyfiveBloc(FrameThirtyfiveState(
        frameThirtyfiveModelObj: FrameThirtyfiveModel(),
      ))
        ..add(FrameThirtyfiveInitialEvent()),
      child: FrameThirtyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtyfiveBloc, FrameThirtyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
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
