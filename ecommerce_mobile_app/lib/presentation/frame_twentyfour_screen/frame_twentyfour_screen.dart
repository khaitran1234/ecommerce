import 'bloc/frame_twentyfour_bloc.dart';
import 'models/frame_twentyfour_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentyfourScreen extends StatelessWidget {
  const FrameTwentyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyfourBloc>(
      create: (context) => FrameTwentyfourBloc(FrameTwentyfourState(
        frameTwentyfourModelObj: FrameTwentyfourModel(),
      ))
        ..add(FrameTwentyfourInitialEvent()),
      child: FrameTwentyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentyfourBloc, FrameTwentyfourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductCategory812x375,
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
