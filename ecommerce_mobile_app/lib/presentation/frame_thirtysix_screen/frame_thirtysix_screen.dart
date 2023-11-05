import 'bloc/frame_thirtysix_bloc.dart';
import 'models/frame_thirtysix_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtysixScreen extends StatelessWidget {
  const FrameThirtysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtysixBloc>(
      create: (context) => FrameThirtysixBloc(FrameThirtysixState(
        frameThirtysixModelObj: FrameThirtysixModel(),
      ))
        ..add(FrameThirtysixInitialEvent()),
      child: FrameThirtysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtysixBloc, FrameThirtysixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgSignUpPage,
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
