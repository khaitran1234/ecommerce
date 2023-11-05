import 'bloc/frame_fortynine_bloc.dart';
import 'models/frame_fortynine_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortynineScreen extends StatelessWidget {
  const FrameFortynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortynineBloc>(
      create: (context) => FrameFortynineBloc(FrameFortynineState(
        frameFortynineModelObj: FrameFortynineModel(),
      ))
        ..add(FrameFortynineInitialEvent()),
      child: FrameFortynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortynineBloc, FrameFortynineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgLanguage,
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
