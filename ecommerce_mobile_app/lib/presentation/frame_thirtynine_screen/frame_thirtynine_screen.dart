import 'bloc/frame_thirtynine_bloc.dart';
import 'models/frame_thirtynine_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtynineScreen extends StatelessWidget {
  const FrameThirtynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtynineBloc>(
      create: (context) => FrameThirtynineBloc(FrameThirtynineState(
        frameThirtynineModelObj: FrameThirtynineModel(),
      ))
        ..add(FrameThirtynineInitialEvent()),
      child: FrameThirtynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtynineBloc, FrameThirtynineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgWishlist,
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
