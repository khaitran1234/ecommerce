import 'bloc/frame_fortythree_bloc.dart';
import 'models/frame_fortythree_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortythreeScreen extends StatelessWidget {
  const FrameFortythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortythreeBloc>(
      create: (context) => FrameFortythreeBloc(FrameFortythreeState(
        frameFortythreeModelObj: FrameFortythreeModel(),
      ))
        ..add(FrameFortythreeInitialEvent()),
      child: FrameFortythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortythreeBloc, FrameFortythreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgContinueShopping,
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
