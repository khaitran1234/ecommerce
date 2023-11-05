import 'bloc/frame_one_bloc.dart';import 'models/frame_one_model.dart';import 'package:ecommerce_mobile_app/core/app_export.dart';import 'package:flutter/material.dart';class FrameOneScreen extends StatelessWidget {const FrameOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FrameOneBloc>(create: (context) => FrameOneBloc(FrameOneState(frameOneModelObj: FrameOneModel()))..add(FrameOneInitialEvent()), child: FrameOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<FrameOneBloc, FrameOneState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: CustomImageView(imagePath: ImageConstant.imgSplashScreen01, height: 812.v, width: 375.h, alignment: Alignment.center))));}); } 
 }
