import 'bloc/frame_twentyfive_bloc.dart';
import 'models/frame_twentyfive_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentyfiveScreen extends StatelessWidget {
  const FrameTwentyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyfiveBloc>(
      create: (context) => FrameTwentyfiveBloc(FrameTwentyfiveState(
        frameTwentyfiveModelObj: FrameTwentyfiveModel(),
      ))
        ..add(FrameTwentyfiveInitialEvent()),
      child: FrameTwentyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentyfiveBloc, FrameTwentyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductCategory,
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
