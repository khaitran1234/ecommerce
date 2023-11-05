import 'bloc/frame_forty_bloc.dart';
import 'models/frame_forty_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortyScreen extends StatelessWidget {
  const FrameFortyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortyBloc>(
      create: (context) => FrameFortyBloc(FrameFortyState(
        frameFortyModelObj: FrameFortyModel(),
      ))
        ..add(FrameFortyInitialEvent()),
      child: FrameFortyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortyBloc, FrameFortyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgAudioCall,
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
