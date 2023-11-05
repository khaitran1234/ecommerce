import 'bloc/frame_thirtythree_bloc.dart';
import 'models/frame_thirtythree_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameThirtythreeScreen extends StatelessWidget {
  const FrameThirtythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtythreeBloc>(
      create: (context) => FrameThirtythreeBloc(FrameThirtythreeState(
        frameThirtythreeModelObj: FrameThirtythreeModel(),
      ))
        ..add(FrameThirtythreeInitialEvent()),
      child: FrameThirtythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameThirtythreeBloc, FrameThirtythreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgRoadMap,
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
