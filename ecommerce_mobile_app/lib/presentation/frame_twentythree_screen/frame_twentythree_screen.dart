import 'bloc/frame_twentythree_bloc.dart';
import 'models/frame_twentythree_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentythreeScreen extends StatelessWidget {
  const FrameTwentythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentythreeBloc>(
      create: (context) => FrameTwentythreeBloc(FrameTwentythreeState(
        frameTwentythreeModelObj: FrameTwentythreeModel(),
      ))
        ..add(FrameTwentythreeInitialEvent()),
      child: FrameTwentythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentythreeBloc, FrameTwentythreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductCategory1,
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
