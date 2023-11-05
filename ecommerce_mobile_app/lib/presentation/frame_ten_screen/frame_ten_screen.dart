import 'bloc/frame_ten_bloc.dart';
import 'models/frame_ten_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTenScreen extends StatelessWidget {
  const FrameTenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTenBloc>(
      create: (context) => FrameTenBloc(FrameTenState(
        frameTenModelObj: FrameTenModel(),
      ))
        ..add(FrameTenInitialEvent()),
      child: FrameTenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTenBloc, FrameTenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgCategorie02,
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
