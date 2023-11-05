import 'bloc/frame_fifty_bloc.dart';
import 'models/frame_fifty_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFiftyScreen extends StatelessWidget {
  const FrameFiftyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFiftyBloc>(
      create: (context) => FrameFiftyBloc(FrameFiftyState(
        frameFiftyModelObj: FrameFiftyModel(),
      ))
        ..add(FrameFiftyInitialEvent()),
      child: FrameFiftyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFiftyBloc, FrameFiftyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMessage,
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
