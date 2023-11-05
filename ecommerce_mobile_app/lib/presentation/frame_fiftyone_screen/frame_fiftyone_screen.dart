import 'bloc/frame_fiftyone_bloc.dart';
import 'models/frame_fiftyone_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFiftyoneScreen extends StatelessWidget {
  const FrameFiftyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFiftyoneBloc>(
      create: (context) => FrameFiftyoneBloc(FrameFiftyoneState(
        frameFiftyoneModelObj: FrameFiftyoneModel(),
      ))
        ..add(FrameFiftyoneInitialEvent()),
      child: FrameFiftyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFiftyoneBloc, FrameFiftyoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMinePage01,
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
