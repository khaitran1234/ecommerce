import 'bloc/frame_fortyfive_bloc.dart';
import 'models/frame_fortyfive_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortyfiveScreen extends StatelessWidget {
  const FrameFortyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortyfiveBloc>(
      create: (context) => FrameFortyfiveBloc(FrameFortyfiveState(
        frameFortyfiveModelObj: FrameFortyfiveModel(),
      ))
        ..add(FrameFortyfiveInitialEvent()),
      child: FrameFortyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortyfiveBloc, FrameFortyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgDiscountsOffer,
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
