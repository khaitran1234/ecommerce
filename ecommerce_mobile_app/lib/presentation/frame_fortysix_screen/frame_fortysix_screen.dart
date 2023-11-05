import 'bloc/frame_fortysix_bloc.dart';
import 'models/frame_fortysix_model.dart';
import 'package:ecommerce_mobile_app/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFortysixScreen extends StatelessWidget {
  const FrameFortysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFortysixBloc>(
      create: (context) => FrameFortysixBloc(FrameFortysixState(
        frameFortysixModelObj: FrameFortysixModel(),
      ))
        ..add(FrameFortysixInitialEvent()),
      child: FrameFortysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameFortysixBloc, FrameFortysixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgFiltersSuccess,
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
