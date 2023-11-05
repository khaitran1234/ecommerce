import 'bloc/frame_fortyfour_bloc.dart';
import 'models/frame_fortyfour_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortyfourScreen extends StatelessWidget {
  const FrameFortyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortyfourBloc>(
      create: (context) => FrameFortyfourBloc(FrameFortyfourState(
        frameFortyfourModelObj: FrameFortyfourModel(),
      ))
        ..add(FrameFortyfourInitialEvent()),
      child: FrameFortyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortyfourBloc, FrameFortyfourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgCountryOrRegion,
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
