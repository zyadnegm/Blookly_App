import 'package:blookly_app/Features/home/presentation/views/homeView.dart';
import 'package:blookly_app/constance.dart';
import 'package:blookly_app/core/utils/asset-utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2),() {
      Get.to(HomeView(),transition:Transition.fade,duration: KTransationDuration);
    },);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.Logo),
        SizedBox(height: 4,),
        const Text("Read free books",textAlign: TextAlign.center,)
      ],

    );
  }
}
