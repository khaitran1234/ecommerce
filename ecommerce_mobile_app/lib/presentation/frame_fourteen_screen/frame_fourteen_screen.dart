import 'bloc/frame_fourteen_bloc.dart';
import 'models/frame_fourteen_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFourteenScreen extends StatelessWidget {
  const FrameFourteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourteenBloc>(
      create: (context) => FrameFourteenBloc(FrameFourteenState(
        frameFourteenModelObj: FrameFourteenModel(),
      ))
        ..add(FrameFourteenInitialEvent()),
      child: FrameFourteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFourteenBloc, FrameFourteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgMinePage04,
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
