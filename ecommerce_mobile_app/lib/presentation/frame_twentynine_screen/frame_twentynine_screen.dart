import 'bloc/frame_twentynine_bloc.dart';
import 'models/frame_twentynine_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameTwentynineScreen extends StatelessWidget {
  const FrameTwentynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentynineBloc>(
      create: (context) => FrameTwentynineBloc(FrameTwentynineState(
        frameTwentynineModelObj: FrameTwentynineModel(),
      ))
        ..add(FrameTwentynineInitialEvent()),
      child: FrameTwentynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameTwentynineBloc, FrameTwentynineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgProductDetails812x375,
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
