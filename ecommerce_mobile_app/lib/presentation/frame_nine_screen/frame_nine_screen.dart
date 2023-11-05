import 'bloc/frame_nine_bloc.dart';
import 'models/frame_nine_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameNineScreen extends StatelessWidget {
  const FrameNineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameNineBloc>(
      create: (context) => FrameNineBloc(FrameNineState(
        frameNineModelObj: FrameNineModel(),
      ))
        ..add(FrameNineInitialEvent()),
      child: FrameNineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameNineBloc, FrameNineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgCategorie03,
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
